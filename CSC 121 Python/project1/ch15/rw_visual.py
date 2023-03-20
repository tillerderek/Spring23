#The following programs produce a visualization of points marked on a random walk.

#Program 1

# import matplotlib.pyplot as plt

# from random_walk import RandomWalk

# # Make a random walk.
# rw = RandomWalk()
# rw.fill_walk()

# # Plot the points in the walk.
# plt.style.use('classic')
# fig, ax = plt.subplots()
# ax.scatter(rw.x_values, rw.y_values, s=15)

# plt.show()

#Program 2 

# import matplotlib.pyplot as plt

# from random_walk import RandomWalk
# while True:
#     # Make a random walk.
#     rw = RandomWalk()
#     rw.fill_walk()

# # Plot the points in the walk.
#     plt.style.use('classic')
#     fig, ax = plt.subplots()
#     point_numbers = range(rw.num_points)
#     ax.scatter(rw.x_values, rw.y_values, c=point_numbers, cmap=plt.cm.Blues,
#                edgecolors='none', s=15)

#     plt.show()

#     keep_running = input("Make another walk? (y/n): ")
#     if keep_running == 'n':
#         break

#Program 3

# import matplotlib.pyplot as plt

# from random_walk import RandomWalk
# while True:
#     # Make a random walk.
#     rw = RandomWalk()
#     rw.fill_walk()

# # Plot the points in the walk.
#     plt.style.use('classic')
#     fig, ax = plt.subplots()
#     point_numbers = range(rw.num_points)
#     ax.scatter(rw.x_values, rw.y_values, c=point_numbers, cmap=plt.cm.Blues,
#                edgecolors='none', s=15)
    
#     ax.scatter(0, 0, c='green', edgecolors='none', s=100)
#     ax.scatter(rw.x_values[-1], rw.y_values[-1], c='red', edgecolors='none', s=100)

#     plt.show()

#     keep_running = input("Make another walk? (y/n): ")
#     if keep_running == 'n':
#         break
# 
#Program 4

# import matplotlib.pyplot as plt

# from random_walk import RandomWalk
# while True:
#     # Make a random walk.
#     rw = RandomWalk(50_000)
#     rw.fill_walk()

# # Plot the points in the walk.
#     plt.style.use('classic')
#     fig, ax = plt.subplots()
#     point_numbers = range(rw.num_points)
#     ax.scatter(rw.x_values, rw.y_values, c=point_numbers, cmap=plt.cm.Blues,
#                edgecolors='none', s=1)
    
#     ax.scatter(0, 0, c='green', edgecolors='none', s=100)
#     ax.scatter(rw.x_values[-1], rw.y_values[-1], c='red', edgecolors='none', s=100)

#     #remove the axes.
#     ax.get_xaxis().set_visible(False)
#     ax.get_yaxis().set_visible(False)


#     plt.show()

#     keep_running = input("Make another walk? (y/n): ")
#     if keep_running == 'n':
#         break

#Program 5

import matplotlib.pyplot as plt

from random_walk import RandomWalk
while True:
    # Make a random walk.
    rw = RandomWalk(50_000)
    rw.fill_walk()

# Plot the points in the walk.
    plt.style.use('classic')
    fig, ax = plt.subplots(figsize=(15, 9))
    point_numbers = range(rw.num_points)
    ax.scatter(rw.x_values, rw.y_values, c=point_numbers, cmap=plt.cm.Blues,
               edgecolors='none', s=1)
    #plot start and end points of the walk
    ax.scatter(0, 0, c='green', edgecolors='none', s=100)
    ax.scatter(rw.x_values[-1], rw.y_values[-1], c='red', edgecolors='none', s=100)

    #remove the axes.
    ax.get_xaxis().set_visible(False)
    ax.get_yaxis().set_visible(False)


    plt.show()

    keep_running = input("Make another walk? (y/n): ")
    if keep_running == 'n':
        break
