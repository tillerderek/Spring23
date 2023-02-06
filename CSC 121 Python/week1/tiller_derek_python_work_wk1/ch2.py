message = "Hello Python world!"
print(message)

message = "Hello Python Crash Course world!"
print(message)

message = "Hello Python Crash Course reader!"
print(mesage)

mesage = "Hello Python Crash Course reader!"
print(mesage)

#2-1
up_dog = "What's"
print(up_dog)

#2-2
alien = "Wow, that's an alien for real!"
print(alien)
 
#name.py Changing case in a string with methods
name = "ada lovelace"
print(name.title())

#full_name.py Using variables in strings
first_name = "ada"
last_name = "lovelace"
full_name = f"{first_name} {last_name}"
print(full_name)

print(f"Hello, {full_name.title()}!")

message = f"Hello, {full_name.title()}!"
print(message)

#apostrophe.py Avoiding syntax errors with strings
message = "One of Python's strengths is its diverse community."
print(message)

#2-3
name = "Billiamson"
print(f"Hey there {name}, are you trying to learn some Python tonight?")

#2-4
name_2 = "derbina jonesley"
print(name_2.lower())

name_2 = "derbina jonesley"
print(name_2.upper())

name_2 = "derbina jonesley"
print(name_2.title())

#2-5
quote = '“We are what we pretend to be, so we must be careful about what we pretend to be.”'
print(f"{quote} -Kurt Vonnegut Jr.")

#2-6
quote = '“We are what we pretend to be, so we must be careful about what we pretend to be.”'
famous_person = "kurt vonnegut jr."
message = (f"{quote} -{famous_person.title()}")
print(message)

#2-7 Derek Tiller 1/11/23 The code below demonstrates the tab and newline functions along with the whitespace stripping methods. 
name_strip = "  jon-bon\n\mysterio "
print(name_strip)

name_strip = "  jon-bon\n\tmysterio "
print(name_strip.lstrip())

name_strip = "  jon-bon\tmysterio "
print(name_strip.rstrip())

name_strip = "  jon-bon\n\tmysterio "
print(name_strip.strip())

#2-8 Derek Tiller 1/11/23 The code below represents the mathematical operations that python can perform on integers. 
print(4+4)
print(10-2)
print(2*4)
print(16/2)

#2-9
fav_num = 100
print(f"For sure my favorite number is {fav_num}.")

#2-10 added comments for 2-7 and 2-8 above

import this
