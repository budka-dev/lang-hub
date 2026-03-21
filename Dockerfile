# Multi-stage build for tree-sitter WASM parsers
FROM rust:1.75-slim-bookworm AS builder

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    nodejs \
    npm \
    clang \
    llvm \
    libclang-dev \
    && rm -rf /var/lib/apt/lists/*

# Install tree-sitter CLI
ARG TREE_SITTER_VERSION=0.25.0
RUN npm install -g tree-sitter-cli@${TREE_SITTER_VERSION}

# Add WASM targets
RUN rustup target add wasm32-unknown-unknown wasm32-wasi

# Install wasm-tools for optimization
RUN cargo install wasm-tools --locked

# Build stage for individual parsers
FROM builder AS parser-builder

WORKDIR /build

# Arguments for building specific parser
ARG PARSER_REPO
ARG PARSER_NAME

# Clone and build parser
RUN git clone --depth 1 https://github.com/${PARSER_REPO}.git parser-src

WORKDIR /build/parser-src

# Generate parser if grammar.js exists but no parser.c
RUN if [ -f "grammar.js" ] && [ ! -f "src/parser.c" ]; then \
        tree-sitter generate; \
    fi

# Build WASM parser
RUN tree-sitter build --wasm -o /output/${PARSER_NAME}.wasm

# Optimize WASM (optional)
RUN if command -v wasm-tools &> /dev/null; then \
        wasm-tools strip /output/${PARSER_NAME}.wasm -o /output/${PARSER_NAME}.wasm; \
    fi

# Final stage - minimal runtime
FROM debian:bookworm-slim AS runtime

RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Copy built parsers
COPY --from=parser-builder /output/*.wasm /parsers/

# Copy manifest validation script
COPY scripts/validate-manifests.js /usr/local/bin/
RUN chmod +x /usr/local/bin/validate-manifests.js

WORKDIR /workspace

# Default command: validate all manifests
CMD ["node", "/usr/local/bin/validate-manifests.js"]

# Production stage with all parsers pre-built
FROM runtime AS production

# Copy all language packs
COPY . /workspace/

# Validate manifests on startup
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD node /usr/local/bin/validate-manifests.js || exit 1

EXPOSE 8080

CMD ["node", "/usr/local/bin/validate-manifests.js"]
