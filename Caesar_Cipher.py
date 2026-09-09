KEY = 5

def caesar_cipher(text: str, shift: int) -> str:
    output = ""

    for character in text:
        if character.isalpha():
            if character.isupper():
                output = output + chr((ord(character) - ord("A") + shift) % 26 + ord("A"))
            else:
                output = output + chr((ord(character) - ord("a") + shift) % 26 + ord("a"))
        else:
            output = output + character

    return output


if __name__ == "__main__":
    shift = KEY

    message = input("Enter the message to encrypt: ")

    cipher_text = caesar_cipher(message, shift)
    print(f"Cipher text: {cipher_text}")

    plain_text = caesar_cipher(cipher_text, -shift)
    print(f"Plain text: {plain_text}")
