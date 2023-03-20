#The following programs produce a visualization in the scatter graph format with a variety of styling applied.

#Program 1

# import matplotlib.pyplot as plt

# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.scatter(2, 4)

# plt.show()

#Program 2

# import matplotlib.pyplot as plt

# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.scatter(2, 4, s=200)

# #set chart title and label axes.
# ax.set_title("Square Numbers", fontsize=24) 
# ax.set_xlabel("Value", fontsize=14)
# ax.set_ylabel("Square of Value", fontsize=14)

# # Set size of tick labels.
# ax.tick_params(axis='both', which='major', labelsize=14)

# plt.show()

#Program 3

# import matplotlib.pyplot as plt

# x_values = [1, 2, 3, 4, 5]
# y_values = [1, 4, 9, 16, 25]

# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.scatter(x_values, y_values, s=100)

# #set chart title and label axes.
# ax.set_title("Square Numbers", fontsize=24) 
# ax.set_xlabel("Value", fontsize=14)
# ax.set_ylabel("Square of Value", fontsize=14)

# # Set size of tick labels.
# ax.tick_params(axis='both', which='major', labelsize=14)

# plt.show()

#Program 4

# import matplotlib.pyplot as plt

# x_values = range(1, 1001)
# y_values = [x**2 for x in x_values]

# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.scatter(x_values, y_values, c='red', s=10)

# #set chart title and label axes.
# ax.set_title("Square Numbers", fontsize=24) 
# ax.set_xlabel("Value", fontsize=14)
# ax.set_ylabel("Square of Value", fontsize=14)

# # Set size of tick labels.
# ax.tick_params(axis='both', which='major', labelsize=14)

# ax.axis([0, 1100, 0, 1100000])

# plt.show()

#Program 5

import matplotlib.pyplot as plt

x_values = range(1, 1001)
y_values = [x**2 for x in x_values]

plt.style.use('seaborn')
fig, ax = plt.subplots()
ax.scatter(x_values, y_values, c=y_values, cmap=plt.cm.Blues, s=10)

#set chart title and label axes.
ax.set_title("Square Numbers", fontsize=24) 
ax.set_xlabel("Value", fontsize=14)
ax.set_ylabel("Square of Value", fontsize=14)

# Set size of tick labels.
ax.tick_params(axis='both', which='major', labelsize=14)

ax.axis([0, 1100, 0, 1100000])

plt.show()