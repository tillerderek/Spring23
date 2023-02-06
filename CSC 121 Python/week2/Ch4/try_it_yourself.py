#4-1
# pizzas = ["chicken and bacon", "supreme", "veggie delite"]
# for pizza in pizzas:
#   # print(pizza)
#   print(f"I for real love {pizza.title()} pizza!\n")

# print(f"I hope you now understand that I really like {pizzas[0].title()} pizza.\n But that also I really like {pizzas[1].title()} pizza.\n But do not forget that I also love to eat {pizzas[2].title()} pizza.\n I guess you could say I really love pizza!")

#4-2
# animals = ["zebra", "tiger", "coral snake", "skunk"]
# for animal in animals:
#   # print(animal)
# 	print(f"One day I intend on riding a {animal.title()} across the USA.")

# print("The thing with these guys is they all have wicked stripes.")

# #4-3
# for value in range(1, 21):
# 	print(value)

# #4-4
# millions = list(range(1, 1000001))
# for million in millions:
# 	print(million)

#4-5 
# millions = list(range(1, 1000001))
# print(min(millions))
# print(max(millions))
# print(sum(millions))
#4-6
# odd_nums = list(range(1, 21, 2))
# for odd_num in odd_nums:
#   print(odd_num)

#4-7
# threes = list(range(3, 31, 3))
# for three in threes:
#   print(three) 
#4-8
# cubes = []
# for value in range(1, 11):
#   cube = value ** 3
#   cubes.append(cube)

# for cube in cubes:
#   print(cube)

#4-9
# cubes = [value ** 3 for value in range(1,11)]
# for cube in cubes:
#   print(cube)

#4-10
# animals = ["zebra", "tiger", "coral snake", "skunk", "ring-tailed lemur"]
# print("The first three animals I will ride across the USA are:")
# for animal in animals[:3]:
#   print(animal.title())

# print("The middle three animals I will ride are:")
# for animal in animals[1:4]:
#   print(animal.title())

# print("The last three animals I will ride are:")
# for animal in animals[-3:]:
#   print(animal.title())
  
#4-11
# pizzas = ["chicken and bacon", "supreme", "veggie delite"]
# friend_pizzas = pizzas[:]
# pizzas.append("triple cheese")
# friend_pizzas.append("triple sauce aka wet pizza")
# print("My fav pizzas are:")
# for pizza in pizzas:
#   print(pizza)

# print("My homies fav pizzas are:")
# for pizza in friend_pizzas:
#   print(pizza)

#4-12
# my_foods = ['pizza', 'falafel', 'carrot cake']
# friend_foods = my_foods[:]
# friend_foods.append("chicken brains")
# print("My fav foods are:")
# for my_food in my_foods:
#   print(my_food)

# print("\nMy homies fav foods are:")
# for friend_food in friend_foods:
#   print(friend_food)

#4-13
# foods = ("chicken", "cheese", "popcorn", "rabbit stew", "various corn")
# for food in foods:
#   print(food)

# # foods.append("beef blocks")
# print("\nOur new menu!:")
# foods = ("chicken", "cheese", "popcorn", "vegan ribs", "backwards ham")
# for food in foods:
#   print(food)

#4-14
# read thru the pep style docs

#4-15
# fixed 4-4, 4-3, and 4-4 to comply with PEP 8 and setup vscode to contain ruler 
# at 80 char and tab to 4 spaces.
