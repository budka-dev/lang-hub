FROM node:20-slim AS builder

ARG TREE_SITTER_VERSION=0.25.0

RUN apt-get update && apt-get install -y \
    git \
    python3 \
    clang \
    make \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g tree-sitter-cli@${TREE_SITTER_VERSION}

WORKDIR /build

# ─── Build a single parser ───
# Usage: docker build --build-arg PARSER_REPO=tree-sitter/tree-sitter-rust --build-arg PARSER_NAME=rust -t parser-rust .
FROM builder AS single-parser

ARG PARSER_REPO
ARG PARSER_NAME

RUN git clone --depth 1 https://github.com/${PARSER_REPO}.git parser-src

RUN cd parser-src \
    && if [ ! -f "src/parser.c" ]; then tree-sitter generate; fi \
    && tree-sitter build --wasm -o /output/tree-sitter-${PARSER_NAME}.wasm

# ─── Build all parsers from manifests ───
FROM builder AS all-parsers

COPY list/ /build/list/
COPY scripts/ /build/scripts/

RUN mkdir -p /output && \
    for manifest in list/*/manifest.toml; do \
      lang=$(dirname "$manifest" | xargs basename); \
      repo=$(grep '^repo = ' "$manifest" | cut -d'"' -f2); \
      source=$(grep '^source = ' "$manifest" | cut -d'"' -f2); \
      if [ "$source" = "build" ] && [ -n "$repo" ]; then \
        echo "Building $lang from $repo..."; \
        git clone --depth 1 "https://github.com/$repo.git" "/tmp/$lang" && \
        cd "/tmp/$lang" && \
        if [ ! -f "src/parser.c" ]; then tree-sitter generate; fi && \
        tree-sitter build --wasm -o "/output/tree-sitter-$lang.wasm" && \
        cd /build && \
        rm -rf "/tmp/$lang" || \
        echo "FAILED: $lang"; \
      fi; \
    done

# ─── Minimal output image ───
FROM scratch AS output
COPY --from=all-parsers /output/*.wasm /parsers/
