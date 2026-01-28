import re
from collections import Counter

def tokenizer_counter(text):

    text = text.lower()
    text = re.sub(r"[^a-z0-9\s]", " ", text)
    words = text.split()
    word_counts = Counter(words)
    return dict(sorted(word_counts.items()))
