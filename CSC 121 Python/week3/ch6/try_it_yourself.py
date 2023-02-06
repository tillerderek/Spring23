# 6-1
# greggers = {'first_name': 'greggers', 'last_name': 'corn', 'age': 'at least 72', 'city': 'outskirts of albuquerque'}

# print(greggers['first_name'].title())
# print(greggers['last_name'].title())
# print(greggers['age'].title())
# print(greggers['city'].title())

# 6-2
# fav_nums = {
#     'bill': 500,
#     'james': 3,
#     'franklin': 2,
#     'sammy': 29,
#     'jilly': 289
# }


# fav = fav_nums['bill']
# print(f"Bill's favorite number is {fav}")

# fav = fav_nums['james']
# print(f"James's favorite number is {fav}")

# fav = fav_nums['franklin']
# print(f"Franklin's favorite number is {fav}")

# fav = fav_nums['sammy']
# print(f"Sammy's favorite number is {fav}")

# fav = fav_nums['jilly']
# print(f"Jilly's favorite number is {fav}")

# 6-3
# words = {
#     'boolean': 't/f',
#     'loop': 'repeat through multiple elements',
#     'variable': 'is set to something else',
#     '==': 'exact match',
#     'integer': 'number'
# }
# print("Programming Terms:")
# for key, value in words.items():
#   print(f"\t{key}: {value}")

# 6-4 I did it like this in the first place after looking forward in the book bc I didn't want to write that many print statements.
# words = {
#     'boolean': 't/f',
#     'loop': 'repeat through multiple elements',
#     'variable': 'is set to something else',
#     '==': 'exact match',
#     'integer': 'number'
# }
# words['constant'] = 'stays the same throughout program'
# words['method'] = 'performs an action on the data'
# words['python'] = 'programming language'
# words['if statement'] = 'conditional test followed by an action if result = true'
# words['elif'] = 'way to add multiple if statements in a loop'

# print("Programming Terms:")
# for key, value in words.items():
#   print(f"\t{key}: {value}")

# 6-5
# rivers = {'nile': 'egypt', 'mississippi': 'usa', 'amazon': 'brazil'}

# for key, value in rivers.items():
#   print(f"The {key.title()} river is in {value.title()}")

# for key in rivers.keys():
#   print(f"\n{key.title()}")

# for value in rivers.values():
#   print(f"\n{value.title()}")

# 6-6
# favorite_languages = {
#     'jen': 'python',
#     'sarah': 'c',
#     'edward': 'ruby',
#     'phil': 'python',
# }

# people = ['jake', 'jen', 'phil', 'franklin']

# for name in favorite_languages.keys():
#     if name in people:
#         print(f"{name.title()}, thanks for taking the poll!")
#     else:
#         print(f"{name.title()}, please take the poll!")

# 6-7
# people = {
#     'greggers': {
#         'first_name': 'greggers',
#         'last_name': 'corn',
#         'age': 'at least 72',
#         'city': 'outskirts of albuquerque',
#     },
#     'jd': {
#         'first_name': 'judy',
#         'last_name': 'dench',
#         'age': 'no more than 35',
#         'city': 'foggy london town',
#     },
#     'franklin': {
#         'first_name': 'fran',
#         'last_name': 'klin',
#         'age': 'bout 20',
#         'city': 'atlanta',
#     },

# }

# for username, user_info in people.items():
#     print(f"\nUsername: {username}")
#     full_name = f"{user_info['first_name']} {user_info['last_name']}"
#     age = user_info['age']
#     location = user_info['city']

#     print(f"\tFull name: {full_name.title()}")
#     print(f"\tLocation: {location.title()}")
#     print(f"\tAge: {age.title()}")

# 6-8
# pets = {
#     'snax': {
#         'animal': 'dog',
#         'owner': 'holly',
#     },
#     'moji': {
#         'animal': 'cat',
#         'owner': 'derek',
#     },
#     'mr.bill': {
#         'animal': 'unknown',
#         'owner': 'the hat man',
#     },
# }

# for pet_name, pet_info in pets.items():
#     print(f"\nPet Name: {pet_name.title()}")
#     pet_type = pet_info['animal']
#     owner = pet_info['owner']

#     print(f"\tType: {pet_type.title()}")
#     print(f"\tOwner: {owner.title()}")

# 6-9
# fav_places = {
#     'jimmy': {
#         'first_name': 'jimmy',
#         'last_name': 'dapig',
#         'favs': ['china', 'japan', 'walmart'],
#     },
#     'kelly': {
#         'first_name': 'kelly',
#         'last_name': 'jones',
#         'favs': ['france', 'usa', 'target'],
#     },
#     'franklin': {
#         'first_name': 'franklin',
#         'last_name': 'debow',
#         'favs': ['china', 'universal studios'],
#     },

# }

# for username, user_info in fav_places.items():
#     full_name = f"{user_info['first_name']} {user_info['last_name']}"

#     print(f"Hey there, {full_name.title()}! It looks like your favorite places "
#           "are:")
#     for fav in user_info['favs']:
#         print(fav.title())

# # 6-10 int doesn't work with len need to research other way to get if statement working
# fav_nums = {
#     'bill': [500, 33],
#     'james': [3],
#     'franklin': [2, 69420],
#     'sammy': [29],
#     'jilly': [289, 100],
# }

# for name, nums in fav_nums.items():
#     print(f"\n{name.title()}'s favorite numbers are:")
#     for num in nums:
#       print(num)

#6-11 
# cities = {
#   'paris': {
#       'country': 'france',
#       'pop': 2160000,
#       'fact': 'home of the mona lisa',
#   },
#   'tulsa': {
#       'country': 'usa',
#       'pop': 411401,
#       'fact': 'home of the tulsa drillers aa baseball team',
#   },
#   'tokyo': {
#       'country': 'japan',
#       'pop': 13960000,
#       'fact': 'home to a robot hotel',
#   },
# }

# for city, info in cities.items():
#   print(f"{city.title()} is in the country of {info['country'].title()}. It's population"
#   f" is {info['pop']}. One interesting thing about {city.title()} is that is "
#   f"{info['fact']}!")

#6-12 
# experimented with programs 6-4 and 6-8 to add functionality and simplify code