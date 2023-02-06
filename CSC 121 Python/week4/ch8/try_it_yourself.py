# 8-1
# def display_message():
#   """Display a summary of learning."""
#   print("This chapter we are learning about functions!")

# display_message()

# 8-2
# def favorite_book(title):
#   """Displays a favorite book with argument."""
#   print(f"One of my favorite books is {title.title()}.")

# favorite_book('the autobiography of crazy frogg')

# 8-3
# def make_shirt(size, text):
#   """Display size and text summary of shirt order."""
#   print(f"Looks like you want a {size} shirt with {text} printed on it.")

# make_shirt('xtra medium', 'sup player?')
# make_shirt(size='xxxl', text='r u fr?')


# 8-4
# def make_shirt(size='large', text='I love Python'):
#   """Display size and text summary of shirt order."""
#   print(f"Looks like you want a {size} shirt with {text} printed on it.")

# make_shirt()
# make_shirt(size='medium')
# make_shirt(size='lil tiny', text='haunted doll collector')

# 8-5
# def describe_city(city, country='iceland'):
#   """Prints a city and its country."""
#   print(f"{city.title()} is in {country.title()}")

# describe_city('reykjavik')
# describe_city('tokyo')
# describe_city('Ísafjörður')

# 8-6
# def city_country(city, country):
#   print(f"{city.title()}, {country.title()}")

# city_country('santiago', 'chile')
# city_country('tokyo', 'japan')
# city_country('milan', 'italy')

# 8-7
# def make_album(artist_name, album_title, songs=None):
#   """Return a dictionary of albums and information."""
#   album = {'artist': artist_name, 'title': album_title}
#   if songs:
#     album['songs'] = songs
#   return album

# album_info = make_album('jackson browne', 'weirdguy')
# print(album_info)

# album_info = make_album('charles entertainment cheese', 'weirdguy2000')
# print(album_info)

# album_info = make_album('cuzin blake', 'weirdguy of all time', 33)
# print(album_info)

# 8-8
# def make_album(artist_name, album_title):
#     """Return a dictionary of albums and information."""
#     album = {'artist': artist_name, 'title': album_title}
#     return album

# while True:
#     artist = input("\nArtist Name: ")
#     album_title = input("\nAlbum Title: ")

#     repeat = input("Would you like to enter in another album? (yes/no)")
#     if repeat == 'no':
#         album_entry = make_album(artist, album_title)
#         print(album_entry)
#         break
#     else:
#         album_entry = make_album(artist, album_title)
#         print(album_entry)
      
#8-9
# messages = ['wazzup dogg', 'what up steve?', 'what you thinking dude?']

# def show_messages(messages):
#   for message in messages:
#     print(message)
  
# show_messages(messages)

#8-10
# messages = ['wazzup dogg', 'what up steve?', 'what you thinking dude?']
# sent_messages = []

# def show_messages(messages):
#   for message in messages:
#     print(message)
  
# def send_messages(messages):
#   while messages:
#     current_message = messages.pop()
#     print(current_message)
#     sent_messages.append(current_message)

# send_messages(messages)
# print(messages)
# print(sent_messages)

#8-11
# messages = ['wazzup dogg', 'what up steve?', 'what you thinking dude?']
# sent_messages = []

# def show_messages(messages):
#   for message in messages:
#     print(message)
  
# def send_messages(messages):
#   while messages:
#     current_message = messages.pop()
#     print(current_message)
#     sent_messages.append(current_message)

# send_messages(messages[:])
# print(messages)
# print(sent_messages)

#8-12
# def sandwich(*toppings):
#   """List sandwich toppings"""
#   print("\nMaking your sandwich with the following toppings:")
#   for topping in toppings:
#     print(f"- {topping}")

# sandwich('cheese', 'pickles', 'chips')
# sandwich('pb', 'jelly')
# sandwich('bugs', 'mustard', 'pepperonis')

#8-13
# def build_profile(first, last, **user_info): 
#   """Build a dictionary containing everything we know about a user."""
#   user_info['first_name'] = first 
#   user_info['last_name'] = last 
#   return user_info

# user_profile = build_profile('derek', 'tiller', location='asheville', field='programming', hobbies='cycling')

# print(user_profile)
# for k, v in user_profile.items():
#   print(f"\n{k}: {v}")

#8-14
# def make_car(mfg, model, **info):
#   info['manufacturer'] = mfg
#   info['model'] = model
#   return info

# car = make_car('subaru', 'crosstrek', color='tan', seats='leather')
# print(car)

#8-15
#work shown in printing_functions.py

#8-16
#work shown in greet_users.py

#8-17
#checked through all programs and all comply with pep8

