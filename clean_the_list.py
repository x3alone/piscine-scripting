def clean_list(items):
    if not items:
        return []

    cleaned = [item.strip() for item in items]

    if "milk" not in [item.lower() for item in cleaned]:
        cleaned.append("milk")

    result = []
    for idx, item in enumerate(cleaned, start=1):
        formatted = item.capitalize()
        result.append(f"{idx}/ {formatted}")

    return result
