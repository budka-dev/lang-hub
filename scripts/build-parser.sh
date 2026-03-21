#!/bin/bash
# Build tree-sitter WASM parser locally

set -e

LANGUAGE=$1
REPO=$2

if [ -z "$LANGUAGE" ] || [ -z "$REPO" ]; then
    echo "Usage: $0 <language> <repo>"
    echo "Example: $0 swift alex-pinkus/tree-sitter-swift"
    exit 1
fi

echo "🔨 Building $LANGUAGE parser from $REPO..."

# Create temp directory
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

# Clone repo
echo "📥 Cloning $REPO..."
git clone --depth 1 "https://github.com/$REPO.git" "$TMPDIR/parser"

cd "$TMPDIR/parser"

# Generate parser if needed
if [ -f "grammar.js" ] && [ ! -f "src/parser.c" ]; then
    echo "📝 Generating parser..."
    tree-sitter generate
fi

# Build WASM
echo "🏗️  Building WASM..."
tree-sitter build --wasm -o "tree-sitter-${LANGUAGE}.wasm"

# Optimize if wasm-tools available
if command -v wasm-tools &> /dev/null; then
    echo "⚡ Optimizing WASM..."
    wasm-tools strip "tree-sitter-${LANGUAGE}.wasm" -o "tree-sitter-${LANGUAGE}.wasm"
fi

# Copy to language directory
TARGET_DIR="$PWD/../../../list/$LANGUAGE/parser"
mkdir -p "$TARGET_DIR"
cp "tree-sitter-${LANGUAGE}.wasm" "$TARGET_DIR/"

echo "✅ Built: $TARGET_DIR/tree-sitter-${LANGUAGE}.wasm"
ls -lh "$TARGET_DIR/tree-sitter-${LANGUAGE}.wasm"
