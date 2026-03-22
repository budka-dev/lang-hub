#!/usr/bin/env python3
import os
import sys
import glob

try:
    import tomlkit
except ImportError:
    print("Error: tomlkit is not installed. Run 'pip install tomlkit'")
    sys.exit(1)

def main():
    has_errors = False
    
    # 1. Load all tool manifests
    tools = {}
    tool_files = glob.glob("tools/*/manifest.toml")
    for tf in tool_files:
        tool_id = os.path.basename(os.path.dirname(tf))
        with open(tf, "r", encoding="utf-8") as f:
            try:
                doc = tomlkit.parse(f.read())
                caps = []
                if "tool" in doc and "capabilities" in doc["tool"]:
                    caps = list(doc["tool"]["capabilities"])
                tools[tool_id] = {"capabilities": caps, "file": tf}
                
                if "tool" not in doc or "name" not in doc["tool"]:
                    print(f"❌ [TOOL ERROR] Tool '{tool_id}' is missing '[tool.name]'.")
                    has_errors = True
            except Exception as e:
                print(f"❌ [TOOL ERROR] Failed to parse {tf}: {e}")
                has_errors = True

    # 2. Map required dependencies from languages
    lang_files = glob.glob("list/*/manifest.toml")
    for lf in lang_files:
        lang_id = os.path.basename(os.path.dirname(lf))
        with open(lf, "r", encoding="utf-8") as f:
            try:
                doc = tomlkit.parse(f.read())
            except Exception as e:
                print(f"❌ [LANG ERROR] Failed to parse {lf}: {e}")
                has_errors = True
                continue

        # Check dependencies
        for section in ["formatter", "linter", "lsp"]:
            if section in doc and "tool" in doc[section]:
                tool_req = doc[section]["tool"]
                
                # Rule 1: Tool must exist
                if tool_req not in tools:
                    print(f"❌ [VALIDATION ERROR] Language '{lang_id}' requires tool '{tool_req}' for {section}, but 'tools/{tool_req}/manifest.toml' does not exist.")
                    has_errors = True
                else:
                    # Rule 2: Tool must have the correct capability
                    caps = tools[tool_req]["capabilities"]
                    if section not in caps:
                        print(f"❌ [VALIDATION ERROR] Language '{lang_id}' binds '{tool_req}' as {section}, but '{tool_req}' does not declare '{section}' in its capabilities. Found: {caps}")
                        has_errors = True

        # Rule 3: Sandbox arrays must be strictly arrays
        if "sandbox" in doc:
            for key, val in doc["sandbox"].items():
                if key in ["build", "run", "test", "repl", "script"]:
                    if not isinstance(val, list):
                        print(f"❌ [VALIDATION ERROR] Language '{lang_id}' defines sandbox.{key} as a {type(val).__name__}. It must be an array of strings (e.g. [\"cmd\", \"arg\"]).")
                        has_errors = True
                elif key == "package_manager":
                    if not isinstance(val, str):
                        print(f"❌ [VALIDATION ERROR] Language '{lang_id}' defines sandbox.package_manager as a {type(val).__name__}. It must be a string.")
                        has_errors = True


    if has_errors:
        print("\n❌ Validation Failed.")
        sys.exit(1)
    else:
        print("\n✅ All manifests passed strict validation!")
        sys.exit(0)

if __name__ == "__main__":
    main()
