.PHONY: help validate build-all build-missing docker-build docker-run clean

# Default target
help:
	@echo "Lang-hub WASM Parser Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  make validate       - Validate all manifests"
	@echo "  make build-all      - Build all parsers (local)"
	@echo "  make build-missing  - Build only missing parsers"
	@echo "  make build-<lang>   - Build specific language parser"
	@echo "  make docker-build   - Build using Docker"
	@echo "  make docker-run     - Run validation in Docker"
	@echo "  make clean          - Remove all built parsers"
	@echo "  make install-deps   - Install local dependencies"

# Validate all manifests
validate:
	@echo "🔍 Validating manifests..."
	@node scripts/validate-manifests.js

# Install dependencies locally
install-deps:
	@echo "📦 Installing dependencies..."
	@npm install -g tree-sitter-cli@0.25.0
	@cargo install wasm-tools --locked 2>/dev/null || true
	@rustup target add wasm32-unknown-unknown wasm32-wasi 2>/dev/null || true

# Build all parsers that need building
build-all: validate
	@echo "🔨 Building all parsers..."
	@for lang in list/*/manifest.toml; do \
		lang=$${lang%%/*}; \
		lang=$${lang#list/}; \
		repo=$$(grep "^repo = " "list/$$lang/manifest.toml" | cut -d'"' -f2); \
		source=$$(grep "^source = " "list/$$lang/manifest.toml" | cut -d'"' -f2); \
		if [ "$$source" = "build" ] && [ -n "$$repo" ]; then \
			echo "Building $$lang..."; \
			bash scripts/build-parser.sh "$$lang" "$$repo" || echo "Failed: $$lang"; \
		fi; \
	done

# Build only missing parsers
build-missing: validate
	@echo "🔨 Building missing parsers..."
	@for lang in list/*/manifest.toml; do \
		lang=$${lang%%/*}; \
		lang=$${lang#list/}; \
		if [ ! -f "list/$$lang/parser/tree-sitter-$$lang.wasm" ]; then \
			repo=$$(grep "^repo = " "list/$$lang/manifest.toml" | cut -d'"' -f2); \
			source=$$(grep "^source = " "list/$$lang/manifest.toml" | cut -d'"' -f2); \
			if [ "$$source" = "build" ] && [ -n "$$repo" ]; then \
				echo "Building $$lang..."; \
				bash scripts/build-parser.sh "$$lang" "$$repo" || echo "Failed: $$lang"; \
			fi; \
		fi; \
	done

# Build specific language (usage: make build-swift)
build-%:
	@echo "🔨 Building $*..."
	@repo=$$(grep "^repo = " "list/$*/manifest.toml" | cut -d'"' -f2); \
	if [ -n "$$repo" ]; then \
		bash scripts/build-parser.sh "$*" "$$repo"; \
	else \
		echo "No repo found for $*"; \
		exit 1; \
	fi

# Docker build for specific language
docker-build:
	@echo "🐳 Building in Docker..."
	@docker build --target builder -t lang-hub-builder .

# Docker run validation
docker-run:
	@echo "🐳 Running validation in Docker..."
	@docker build --target runtime -t lang-hub-validator . && \
	docker run --rm -v "$$(pwd):/workspace" lang-hub-validator

# Clean all built parsers
clean:
	@echo "🧹 Cleaning built parsers..."
	@find . -type d -name "parser" -exec rm -rf {} + 2>/dev/null || true
	@echo "✅ Cleaned"

# List all languages and their status
list-langs:
	@echo "📋 Language Status:"
	@echo ""
	@cd list && for lang in */manifest.toml; do \
		lang=$${lang%%/*}; \
		name=$$(grep "^name = " "$$lang/manifest.toml" | cut -d'"' -f2); \
		source=$$(grep "^source = " "$$lang/manifest.toml" | cut -d'"' -f2); \
		if [ -f "$$lang/parser/tree-sitter-$$lang.wasm" ]; then \
			status="✅"; \
		elif [ "$$source" = "build" ]; then \
			status="🔨"; \
		elif [ "$$source" = "prebuilt" ]; then \
			status="📦"; \
		else \
			status="❓"; \
		fi; \
		echo "  $$status $$name ($$lang)"; \
	done

# CI target for GitHub Actions
ci-build:
	@echo "🔨 CI Build..."
	@node scripts/validate-manifests.js
	@$(MAKE) build-missing
