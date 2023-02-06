# 5-1
# car = 'subaru'
# print("Is car == 'subaru'? I predict True.")
# print(car == 'subaru')

# print("\nIs car == 'audi'? I predict False.")
# print(car == 'audi')

# age = 22
# jim_age = 20
# jim_age >= 21

# user = "Jimothy"
# user == "jimothy"

# cool_guys = ["blake", "brian", "jackery"]
# user = "jake"

# if user not in cool_guys:
#   print(f"{user.title()}, nice try. But you don't make the cut")

# jack = 50
# karen = 59

# if jack + karen < 100:
#   print("You guys are almost at 100!")
# else:
#   print("You did it!!")

# car = 'honda'
# print(car =='chevy')

# car = 'chevy'
# print(car =='chevy')

# 5-2
# I did these in 5-1 alongside the boolean conditional tests

# 5-3
# alien_color = "green"
# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")

# alien_color = "red"
# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")

# 5-4
# alien_color = "red"
# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")
# else:
#   print(f"Dang! You got a {alien_color.upper()} alien! That's worth 10 points!")

# alien_color = "green"
# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")
# else:
#   print(f"Dang! You got a {alien_color.upper()} alien! That's worth 10 points!")

# 5-5
# alien_color = "green"

# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")
# elif alien_color == "yellow":
#   print(f"Dang! You got a {alien_color.upper()} alien! That's worth 10 points!")
# elif alien_color == "red":
#   print(f"Holy Moly! You got a {alien_color.upper()} alien! That's worth 15 points!")

# alien_color = "yellow"

# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")
# elif alien_color == "yellow":
#   print(f"Dang! You got a {alien_color.upper()} alien! That's worth 10 points!")
# elif alien_color == "red":
#   print(f"Holy Moly! You got a {alien_color.upper()} alien! That's worth 15 points!")

# alien_color = "red"

# if alien_color == "green":
#   print(f"You got a {alien_color.upper()} alien! You just earned 5 points!")
# elif alien_color == "yellow":
#   print(f"Dang! You got a {alien_color.upper()} alien! That's worth 10 points!")
# elif alien_color == "red":
#   print(f"Holy Moly! You got a {alien_color.upper()} alien! That's worth 15 points!")

# 5-6
# age = 99

# if age < 2:
#   print("Your are a baby.")
# if age > 2 and age < 4:
#   print("Your are a toddler.")
# if age > 4 and age < 13:
#   print("Your are a kid.")
# if age > 13 and age < 20:
#   print("Your are a teenager.")
# if age > 20 and age < 65:
#   print("Your are an adult.")
# if age > 65:
#   print("Your are an elder.")

# 5-7 used two lists and a loop to compare fruits with favorite_fruits instead of a bunch of if statements
# favorite_fruits = ["apple", "pear", "cloud berries"]
# fruits = ["apple", "pear", "cloud berries", "jackfruit", "grapes"]
# for fruit in fruits:
#   if fruit in favorite_fruits:
#     print(f"You really like {fruit.title()}")

# 5-8
# usernames = ["jabo", "chris9", "admin", "kingDoggie", "mrUSA"]

# for username in usernames:
#   if username == "admin":
#     print("Hello admin, would you like to see a status report?")
#   else:
#     print(f"Hello {username.title()} thanks for logging on!")


# 5-9
# usernames = []

# for username in usernames:
#   if username == "admin":
#     print("Hello admin, would you like to see a status report?")
#   else:
#     print(f"Hello {username.title()} thanks for logging on!")

# else:
#   print("We need to find some users!")

# 5-10 compare two lists and lower case all elements 
# current_users = ["jake", "bigDawg", "franny", "wowzaMan", "greggg"]
# new_users = ["JAKE", "bigDAwg", "franklin2", "dianne", "danTheMan"]
# current_users_case = []


# for current_user in current_users:
#     current_users_case.append(current_user.lower())

# for new_user in new_users:
#     if new_user.lower() not in current_users_case:
#         print(f"Awesome the username {new_user} is available!")

#     else:
#       print("Sorry, you need to choose a different username.")

#5-11
# nums = list(range(1,10))

# for num in nums:
#   if num == 1:
#     print(f"{num}st")
#   elif num == 2:
#     print(f"{num}nd")
#   elif num == 3:
#     print(f"{num}rd")
#   else:
#     print(f"{num}th")

# 5-12
# Reviewed and corrected

#5-13
#I'm thinking I would like to explore ideas with my rasberry pi and my tower
# garden for automation using the simple if-else blocks. As well, I think 
#using heart rate and hrv data from my watch to write a program that warns if 
#either is elevated when not during exercise, that you may want to de-stress. 
#lots of ideas!
