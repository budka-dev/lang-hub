#!/usr/bin/env node
/**
 * Manifest validation script for lang-hub
 * Validates all manifest.toml files and checks WASM availability
 */

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const LANGUAGES_DIR = path.join(process.cwd(), 'list');
const REQUIRED_FIELDS = {
  language: ['name', 'extensions'],
  parser: ['type', 'repo'],
  lsp: ['name', 'command'],
};

function parseToml(content) {
  const result = {};
  let currentSection = null;

  for (const line of content.split('\n')) {
    const trimmed = line.trim();

    // Skip empty lines and comments
    if (!trimmed || trimmed.startsWith('#')) continue;

    // Section header
    const sectionMatch = trimmed.match(/^\[([^\]]+)\]$/);
    if (sectionMatch) {
      currentSection = sectionMatch[1];
      result[currentSection] = result[currentSection] || {};
      continue;
    }

    // Key-value pair
    const kvMatch = trimmed.match(/^([\w_]+)\s*=\s*(.+)$/);
    if (kvMatch && currentSection) {
      const [, key, value] = kvMatch;
      // Remove quotes from strings
      const cleanValue = value.replace(/^["']|["']$/g, '');
      result[currentSection][key] = cleanValue;
    }
  }

  return result;
}

function validateManifest(langDir) {
  const manifestPath = path.join(langDir, 'manifest.toml');

  if (!fs.existsSync(manifestPath)) {
    return { valid: false, errors: ['manifest.toml not found'] };
  }

  const content = fs.readFileSync(manifestPath, 'utf8');
  const manifest = parseToml(content);
  const errors = [];
  const warnings = [];

  // Check required sections
  for (const [section, fields] of Object.entries(REQUIRED_FIELDS)) {
    if (!manifest[section]) {
      errors.push(`Missing section: [${section}]`);
      continue;
    }

    for (const field of fields) {
      if (!manifest[section][field]) {
        errors.push(`Missing field: ${section}.${field}`);
      }
    }
  }

  // Validate parser configuration
  if (manifest.parser) {
    const { type, source, repo, download_url } = manifest.parser;

    if (type === 'wasm') {
      // Check if repo is specified for CI builds
      if (!repo) {
        errors.push('parser.repo is required for WASM parsers');
      }

      // Check source type
      if (!source) {
        warnings.push('parser.source not specified (prebuilt or build)');
      }

      // Check download_url
      if (!download_url) {
        errors.push('parser.download_url is required');
      }

      // Check if local WASM file exists for "build" source
      if (source === 'build' && download_url?.startsWith('./')) {
        const wasmPath = path.join(langDir, download_url);
        if (!fs.existsSync(wasmPath)) {
          warnings.push(`WASM file not found: ${download_url} (will be built by CI)`);
        }
      }
    }
  }

  // Validate LSP configuration
  if (manifest.lsp) {
    if (!manifest.lsp.download_url && !manifest.lsp.command) {
      errors.push('LSP requires either download_url or command');
    }
  }

  return {
    valid: errors.length === 0,
    errors,
    warnings,
    manifest,
  };
}

function checkGitHubRepo(repo) {
  try {
    const result = execSync(`curl -s -o /dev/null -w "%{http_code}" https://api.github.com/repos/${repo}`, {
      encoding: 'utf8',
      timeout: 10000,
    });
    return result.trim() === '200';
  } catch {
    return false;
  }
}

function main() {
  console.log('🔍 Validating language manifests...\n');

  const languages = fs.readdirSync(LANGUAGES_DIR)
    .filter(dir => fs.statSync(path.join(LANGUAGES_DIR, dir)).isDirectory())
    .filter(dir => !dir.startsWith('.') && dir !== 'scripts' && dir !== 'node_modules');

  let totalValid = 0;
  let totalInvalid = 0;
  let needsBuild = [];

  for (const lang of languages) {
    const langDir = path.join(LANGUAGES_DIR, lang);
    const result = validateManifest(langDir);

    console.log(`📦 ${lang}`);

    if (result.valid) {
      console.log('  ✅ Valid');
      totalValid++;
    } else {
      console.log('  ❌ Invalid');
      totalInvalid++;
    }

    if (result.errors.length > 0) {
      for (const error of result.errors) {
        console.log(`     ❌ ${error}`);
      }
    }

    if (result.warnings.length > 0) {
      for (const warning of result.warnings) {
        console.log(`     ⚠️  ${warning}`);
      }
    }

    // Check if needs CI build
    if (result.manifest?.parser?.source === 'build') {
      needsBuild.push({
        language: lang,
        repo: result.manifest.parser.repo,
      });
    }

    // Verify GitHub repo exists
    if (result.manifest?.parser?.repo) {
      const exists = checkGitHubRepo(result.manifest.parser.repo);
      if (!exists) {
        console.log(`     ❌ GitHub repo not found: ${result.manifest.parser.repo}`);
      }
    }

    console.log();
  }

  console.log('📊 Summary:');
  console.log(`   Valid: ${totalValid}`);
  console.log(`   Invalid: ${totalInvalid}`);
  console.log(`   Total: ${languages.length}`);

  if (needsBuild.length > 0) {
    console.log(`\n🔨 Languages needing CI build: ${needsBuild.length}`);
    for (const { language, repo } of needsBuild) {
      console.log(`   - ${language}: ${repo}`);
    }
  }

  process.exit(totalInvalid > 0 ? 1 : 0);
}

if (require.main === module) {
  main();
}

module.exports = { parseToml, validateManifest };
