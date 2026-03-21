#!/bin/bash
set -e

REPO="https://github.com/tree-sitter/tree-sitter-rust"
REV="master"
PARSER_DIR="tree-sitter-rust"

if [ ! -d "$PARSER_DIR" ]; then
    git clone $REPO $PARSER_DIR
fi

cd $PARSER_DIR
git fetch origin
git checkout $REV

# Build the parser
cc -c -I src src/parser.c -o parser.o
cc -c -I src src/scanner.c -o scanner.o

# Create shared library
EXT="so"
if [[ "$OSTYPE" == "darwin"* ]]; then
    EXT="dylib"
fi

cc -shared -o ../tree-sitter-rust.$EXT parser.o scanner.o

echo "Built tree-sitter-rust.$EXT successfully!"
