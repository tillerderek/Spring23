#15-1
# import matplotlib.pyplot as plt

# x_values = [1, 2, 3, 4, 5]
# y_values = [x**3 for x in x_values]

# fig, ax = plt.subplots()
# ax.plot(x_values, y_values)

# plt.show

# import matplotlib.pyplot as plt

# x_values = range(1, 6)
# y_values = [x**3 for x in x_values]

# fig, ax = plt.subplots()
# ax.plot(x_values, y_values)

# plt.show

#15-2
# import matplotlib.pyplot as plt

# x_values = range(1, 6)
# y_values = [x**3 for x in x_values]

# fig, ax = plt.subplots()
# ax.plot(x_values, y_values, c=(0.1, 0.8, 0.5))

# plt.show

#15-3

import matplotlib.pyplot as plt

from random_walk import RandomWalk
while True:
    # Make a random walk.
    rw = RandomWalk()
    rw.fill_walk()

# Plot the points in the walk.
    plt.style.use('classic')
    fig, ax = plt.subplots(figsize=(15, 9))
    point_numbers = range(rw.num_points)
    ax.plot(rw.x_values, rw.y_values, color='blue', linewidth=2)
    
    #remove the axes.
    ax.get_xaxis().set_visible(False)
    ax.get_yaxis().set_visible(False)


    plt.show()

    keep_running = input("Make another walk? (y/n): ")
    if keep_running == 'n':
        break
