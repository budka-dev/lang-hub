#!/usr/bin/env python3
import os
import sys
import glob
import json
import urllib.request
import urllib.parse
import re

try:
    import tomlkit
except ImportError:
    os.system(f"{sys.executable} -m pip install tomlkit")
    import tomlkit

def get_latest_tag(repo):
    url = f"https://api.github.com/repos/{repo}/releases/latest"
    req = urllib.request.Request(url, headers={"User-Agent": "lang-hub-updater"})
    try:
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode("utf-8"))
            return data.get("tag_name")
    except Exception as e:
        print(f"Error fetching {repo}: {e}")
        return None

def update_manifest(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        doc = tomlkit.parse(f.read())
        
    changed = False
    if "tool" in doc and "install" in doc["tool"] and "binary" in doc["tool"]["install"]:
        url = doc["tool"]["install"]["binary"].get("url", "")
        # Match pattern: https://github.com/<owner>/<repo>/releases/download/<tag>/<file>
        match = re.match(r"https://github\.com/([^/]+/[^/]+)/releases/download/([^/]+)/(.+)", url)
        if match:
            repo, old_tag, filename = match.groups()
            print(f"Checking {repo} (current: {old_tag})...")
            new_tag = get_latest_tag(repo)
            
            if new_tag:
                # url encoding the new tag in case it involves slashes 
                # (e.g. some repos have tags like `cli/v1.0.0` which becomes `cli%2Fv1.0.0`)
                new_tag_encoded = urllib.parse.quote(new_tag, safe="")
                
                # Check inequality (support comparing encoded to non-encoded fallback)
                if new_tag_encoded != old_tag and new_tag != old_tag:
                    print(f" -> Updating {repo} from {old_tag} to {new_tag_encoded}")
                    new_url = url.replace(old_tag, new_tag_encoded)
                    doc["tool"]["install"]["binary"]["url"] = new_url
                    changed = True
                else:
                    print(" -> Up to date.")

    if changed:
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(tomlkit.dumps(doc))
        return True
    return False

def main():
    manifests = glob.glob("tools/*/manifest.toml")
    updates = 0
    for m in manifests:
        if update_manifest(m):
            updates += 1
            
    print(f"Updated {updates} tools.")
    
if __name__ == "__main__":
    main()
