import sys

def main():
    if len(sys.argv) != 2:
        print("Error: wrong number of arguments")
        sys.exit(1)

    count = int(sys.argv[1])
    candidates = {}

    for _ in range(count):
        print("Add a new candidate:")
        name = input("name: ").strip()
        age = int(input("age: ").strip())
        candidates[name] = age

    for name, age in candidates.items():
        if age < 18:
            print(f"{name} is not eligible (underaged)")
        elif age > 60:
            print(f"{name} is not eligible (over the legal age)")
        else:
            print(f"{name} is eligible")


if __name__ == "__main__":
    main()
