import os
import json

def credentials_search():
    logs_file = "logs.json"
    output_file = "credentials.json"

    if not os.path.isfile(logs_file):
        return

    try:
        with open(logs_file, "r", encoding="utf-8") as f:
            data = json.load(f)
    except (json.JSONDecodeError, FileNotFoundError):
        return

    if not data:
        return

    def find_keys(obj, keys_to_find, found=None):
        if found is None:
            found = {}
        if isinstance(obj, dict):
            for k, v in obj.items():
                if k in keys_to_find:
                    found[k] = v
                if isinstance(v, dict):
                    find_keys(v, keys_to_find, found)
                elif isinstance(v, list):
                    for item in v:
                        find_keys(item, keys_to_find, found)
        elif isinstance(obj, list):
            for item in obj:
                find_keys(item, keys_to_find, found)
        return found

    keys_to_find = ["password", "secret"]
    found_values = find_keys(data, keys_to_find)

    if found_values:
        with open(output_file, "w", encoding="utf-8") as out_f:
            json.dump(found_values, out_f, indent=2)
