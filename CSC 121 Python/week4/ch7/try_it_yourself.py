# 7-1
# rental = input("What kind of car would you like to rent? ")
# print(f"Let me see if I can find you a {rental}.")

# 7-2
# reservation = input("How many people are in your dinner group? ")
# reservation = int(reservation)

# if reservation >= 8:
#   print("I'm sorry you'll have to wait for a table.")
# else:
#   print("Your table is ready!")

# 7-3
# number = input("Enter a number, and I'll tell you if it's a multiple of 10: ")
# number = int(number)

# if number % 10 == 0:
#   print(f"\nThe number {number} is a multiple of 10.")
# else:
#   print(f"\nThe number {number} is not a multiple of 10.")

# 7-4
# toppings = "Enter your toppings: "
# toppings += "\n(Enter 'quit' when you're finished.)"

# while True:
#     pizza = input(toppings)

#     if pizza == 'quit':
#         break

#     else:
#         print(f"{pizza} is being added to your pizza!")

# 7-5 had to move break if statement before int(age) var to quit program
# prompt = "Enter your age: "
# prompt += "\n(type 'quit' when you're finished.)"

# while True:

#     age = input(prompt)

#     if age == 'quit':
#         break

#     age = int(age)

#     if age < 3:
#         ticket = 0

#     elif age >= 3 and age <= 12:
#         ticket = 10

#     elif age > 12:
#         ticket = 15

#     print(f"Your ticket price is ${ticket}")

# 7-6 already included all req's in 7-4 and 7-5

# 7-7
# hotdogs = 100
# while hotdogs <= 101:
#   print(hotdogs)

#7-8 
# sandwich_orders = ['turkey', 'bacon', 'roast beef', 'pimento cheese']
# finished_sandwiches = []

# while sandwich_orders:
#   sandwich = sandwich_orders.pop()
#   print(f"I made you a {sandwich} sandwich.")
#   finished_sandwiches.append(sandwich)

# print ("\nI have made the following sandwiches:")
# for finished in finished_sandwiches:
#   print(finished)

#7-9
# sandwich_orders = ['turkey', 'pastrami', 'bacon', 'roast beef', 'pastrami', 'pastrami', 'pimento cheese']
# finished_sandwiches = []

# print("We have run out of pastrami")
# while 'pastrami' in sandwich_orders:
#   sandwich_orders.remove('pastrami')

# while sandwich_orders:
#   sandwich = sandwich_orders.pop()
#   print(f"I made you a {sandwich} sandwich.")
#   finished_sandwiches.append(sandwich)

# print ("\nI have made the following sandwiches:")
# for finished in finished_sandwiches:
#   print(finished)

#7-10
# responses = []
# polling_active = True

# while polling_active:
    
#     destination = input("\nWhat is your dream vacation? ")

#     responses.append(destination)
#     repeat = input("Would you like to let another person respond? (yes/ no) ")
#     if repeat == 'no':
#         polling_active = False

# print("According to this poll people would like to go to the following places:")
# for response in responses:
#     print(response)