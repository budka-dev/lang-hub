#!/bin/bash
# Update download_url in manifests to point to GitHub Releases

REPO="budka-dev/lang-hub"
TAG="${1:-latest}"

if [ "$TAG" = "latest" ]; then
  # Get latest release tag from GitHub API
  TAG=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | grep '"tag_name":' | cut -d'"' -f4)
  if [ -z "$TAG" ]; then
    echo "Could not fetch latest release tag"
    exit 1
  fi
fi

echo "Updating manifests to use release: $TAG"

cd list

for manifest in */manifest.toml; do
  lang=${manifest%%/*}

  # Only update languages with source = "build"
  if grep -q 'source = "build"' "$manifest"; then
    # Update download_url to GitHub release
    sed -i "s|download_url = .*|download_url = \"https://github.com/$REPO/releases/download/$TAG/tree-sitter-$lang.wasm\"|" "$manifest"
    echo "Updated $lang -> $TAG"
  fi
done

echo ""
echo "Done! Commit changes with:"
echo "  git add list/*/manifest.toml"
echo "  git commit -m \"chore: update download URLs to $TAG\""
