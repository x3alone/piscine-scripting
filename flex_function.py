def create_person(first_name, last_name, *args, age=None, gender=None, size=1.83, job="taxidermist"):
    if len(args) > 0:
        age = args[0]
    if len(args) > 1:
        gender = args[1]

    return {
        'first_name': first_name,
        'last_name': last_name,
        'age': age,
        'gender': gender,
        'size': size,
        'job': job,
    }
