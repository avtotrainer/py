# Get the user's age as input
user_age = input("How old are you? ")

# Convert the user's input to an integer
user_age = int(user_age)

# Check the age and provide a response
if user_age < 0:
    print("Invalid age! Please enter a valid age.")
elif user_age < 18:
    print("You are underage.")
elif user_age < 65:
    print("You are of working age.")
else:
    print("You are eligible for retirement.")

# Note: This is a simple example and may not cover all possible cases.
