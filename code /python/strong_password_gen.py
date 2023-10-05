import random


def generate_strong_password(length=12):
    # Define the character sets for each type of character
    uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    lowercase_letters = 'abcdefghijklmnopqrstuvwxyz'
    digits = '0123456789'
    special_characters = "!@#$%^&*()_+[]{}|;:,.<>?"

    # Ensure that the length of the password is at least 12 characters
    if length < 12:
        raise ValueError("Password length should be at least 12 characters.")

    # Combine all character sets
    all_characters = uppercase_letters + lowercase_letters + digits + special_characters

    # Ensure that the password contains at least one character from each set
    password = []
    password.append(random.choice(uppercase_letters))
    password.append(random.choice(lowercase_letters))
    password.append(random.choice(digits))
    password.append(random.choice(special_characters))

    # Generate the remaining characters randomly
    remaining_length = length - 4
    for _ in range(remaining_length):
        password.append(random.choice(all_characters))

    # Shuffle the password to make it random
    random.shuffle(password)

    # Convert the list of characters to a string
    strong_password = ''.join(password)

    return strong_password

# Example usage:
if __name__ == "__main__":
    password = generate_strong_password()
    print("Generated strong password:", password)
