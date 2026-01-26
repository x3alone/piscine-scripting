def do_punishment(first_part, second_part, nb_lines):
    first = first_part.strip()
    second = second_part.strip()

    sentence = f"{first} {second}.\n"

    return sentence * nb_lines
