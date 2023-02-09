# 9-1
# class Restaurant:
#     """Simple class for restaurant info."""

#     def __init__(self, restaurant_name, cuisine_type):
#         self.restaurant_name = restaurant_name
#         self.cuisine_type = cuisine_type

#     def describe_restaurant(self):
#         print(f"{self.restaurant_name}, {self.cuisine_type}")

#     def open_restaurant(self):
#       print(f"{self.restaurant_name} is open!")

# restaurant = Restaurant('Billies', 'German')    
# print(f"{restaurant.restaurant_name} serves {restaurant.cuisine_type} food.")

# restaurant.open_restaurant()

#9-2
# class Restaurant:
#     """Simple class for restaurant info."""

#     def __init__(self, restaurant_name, cuisine_type):
#         self.restaurant_name = restaurant_name
#         self.cuisine_type = cuisine_type

#     def describe_restaurant(self):
#         print(f"{self.restaurant_name}, {self.cuisine_type}")

#     def open_restaurant(self):
#       print(f"{self.restaurant_name} is open!")

# restaurant = Restaurant('Billies', 'German')    
# restaurant2 = Restaurant('Jimmies', 'Mexican')    
# restaurant3 = Restaurant('Jonnies', 'American')  

# print(f"{restaurant.restaurant_name} serves {restaurant.cuisine_type} food.")

# restaurant.open_restaurant()
# print(f"{restaurant2.restaurant_name} serves {restaurant2.cuisine_type} food.")

# restaurant2.open_restaurant()

# print(f"{restaurant3.restaurant_name} serves {restaurant3.cuisine_type} food.")

# restaurant3.open_restaurant()

#9-3
# class User:
#   def __init__(self, first_name, last_name, job, dob):
#     self.first_name = first_name
#     self.last_name = last_name
#     self.job = job
#     self.dob = dob

#   def describe_user(self):
#     print(f"{self.first_name.title()}\n{self.last_name.title()}\n{self.job.title()}\n{self.dob}")

#   def greet_user(self):
#     print(f"Hello {self.first_name.title()} {self.last_name.title()}! Hope you get {self.dob} off work as a {self.job.title()} to celebrate your birthday.")

# user = User('bill', 'jones', 'chef', '10/31/1999')
# user2 = User('dill', 'bones', 'fireman', '1/31/1989')
# user3 = User('phil', 'loans', 'banker', '10/10/1978')

# user.describe_user()
# user.greet_user()

# user2.describe_user()
# user2.greet_user()

# user3.describe_user()
# user3.greet_user()
