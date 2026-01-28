import sys
import os

def main():
    if len(sys.argv) != 2:
        exit(1)

    input_file = sys.argv[1]

    if not os.path.isfile(input_file) or not os.access(input_file, os.R_OK):
        exit(1)

    filtered_lines = []
    with open(input_file, "r", encoding="utf-8") as f:
        for line in f:
            if "pineapple" not in line:
                filtered_lines.append(line)

    with open("out.txt", "w", encoding="utf-8") as out_file:
        out_file.writelines(filtered_lines)


if __name__ == "__main__":
    main()
