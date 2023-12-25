print("print name:")
name = input("enter your name: ")
print("Ok")
print(f"Hello {name}")

age = int(input(f"How old are you {name}"))

if age < 17:
    print(f"{name}, you are young man")
else:
    print(f"{name}, you are old man")
          