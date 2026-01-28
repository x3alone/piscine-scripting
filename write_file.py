def to_do(tasks):

    with open("output.txt", "w", encoding="utf-8") as f:
        for date, task in tasks:
            line = f"{date.strftime('%A %d %B %Y')}: {task}\n"
            f.write(line)
