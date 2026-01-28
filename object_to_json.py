import json

class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(data):
    try:
        obj = json.loads(data)
    except Exception:
        return User()

    if not isinstance(obj, dict):
        return User()

    if "username" in obj and "email" in obj:
        user = User()
        user.username = obj["username"]
        user.email = obj["email"]
        return user

    return User()


def user_to_json(user):
    return json.dumps(user.__dict__)
