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

# import matplotlib.pyplot as plt

# from random_walk import RandomWalk
# while True:
#     # Make a random walk.
#     rw = RandomWalk()
#     rw.fill_walk()

# # Plot the points in the walk.
#     plt.style.use('classic')
#     fig, ax = plt.subplots(figsize=(15, 9))
#     point_numbers = range(rw.num_points)
#     ax.plot(rw.x_values, rw.y_values, color='blue', linewidth=2)
    
#     #remove the axes.
#     ax.get_xaxis().set_visible(False)
#     ax.get_yaxis().set_visible(False)


#     plt.show()

#     keep_running = input("Make another walk? (y/n): ")
#     if keep_running == 'n':
#         break

#15-6
# from plotly.graph_objs import Bar, Layout
# from plotly import offline

# from die import Die

# #Create two D8 dice.
# die_1 = Die(8)
# die_2 = Die(8)

# #Make some rolls, and store results in a list. 
# results = []
# for roll_num in range(1000):
#     result = die_1.roll() + die_2.roll()
#     results.append(result)
    
# #analyze the results. 
# frequencies = []
# max_result = die_1.num_sides + die_2.num_sides
# for value in range(2, max_result+1):
#     frequency = results.count(value)
#     frequencies.append(frequency)

# #Visualize the results.
# x_values = list(range(2, max_result+1))
# data = [Bar(x=x_values, y=frequencies)]

# x_axis_config = {'title': 'Result', 'dtick': 1}
# y_axis_config = {'title': 'Frequency of Result'}
# my_layout = Layout(title='Results of rolling two D8 dice 1000 times', xaxis=x_axis_config, yaxis=y_axis_config)
# offline.plot({'data': data, 'layout': my_layout}, filename='d8_d8.html')

# print(frequencies)

# from plotly.graph_objs import Bar, Layout
# from plotly import offline

# from die import Die

# #Create two D100 dies!!!
# die_1 = Die(100)
# die_2 = Die(100)

# #Make some rolls, and store results in a list. 
# results = []
# for roll_num in range(100_000):
#     result = die_1.roll() + die_2.roll()
#     results.append(result)
    
# #analyze the results. 
# frequencies = []
# max_result = die_1.num_sides + die_2.num_sides
# for value in range(2, max_result+1):
#     frequency = results.count(value)
#     frequencies.append(frequency)

# #Visualize the results.
# x_values = list(range(2, max_result+1))
# data = [Bar(x=x_values, y=frequencies)]

# x_axis_config = {'title': 'Result', 'dtick': 1}
# y_axis_config = {'title': 'Frequency of Result'}
# my_layout = Layout(title='Results of rolling two D100 dice 100000 times', xaxis=x_axis_config, yaxis=y_axis_config)
# offline.plot({'data': data, 'layout': my_layout}, filename='d8_d8.html')

# print(frequencies)

#15-7
# from plotly.graph_objs import Bar, Layout
# from plotly import offline

# from die import Die

# #Create a three D6 dice.
# die_1 = Die()
# die_2 = Die()
# die_3 = Die()

# #Make some rolls, and store results in a list. 
# results = []
# for roll_num in range(1000):
#     result = die_1.roll() + die_2.roll() + die_3.roll()
#     results.append(result)
    
# #analyze the results. 
# frequencies = []
# max_result = die_1.num_sides + die_2.num_sides
# for value in range(3, max_result+1):
#     frequency = results.count(value)
#     frequencies.append(frequency)

# #Visualize the results.
# x_values = list(range(3, max_result+1))
# data = [Bar(x=x_values, y=frequencies)]

# x_axis_config = {'title': 'Result', 'dtick': 1}
# y_axis_config = {'title': 'Frequency of Result'}
# my_layout = Layout(title='Results of rolling three D6 dice 1000 times', xaxis=x_axis_config, yaxis=y_axis_config)
# offline.plot({'data': data, 'layout': my_layout}, filename='d3_d3_d3.html')

# print(frequencies)

#15-8
# from plotly.graph_objs import Bar, Layout
# from plotly import offline

# from die import Die

# #Create two D6 dice.
# die_1 = Die()
# die_2 = Die()

# #Make some rolls, and store results in a list. 
# results = []
# for roll_num in range(1000):
#     result = die_1.roll() * die_2.roll()
#     results.append(result)
    
# #analyze the results. 
# frequencies = []
# max_result = die_1.num_sides * die_2.num_sides
# for value in range(1, max_result+1):
#     frequency = results.count(value)
#     frequencies.append(frequency)

# #Visualize the results.
# x_values = list(range(1, max_result+1))
# data = [Bar(x=x_values, y=frequencies)]

# x_axis_config = {'title': 'Result', 'dtick': 1}
# y_axis_config = {'title': 'Frequency of Result'}
# my_layout = Layout(title='Results of the product of rolling two D6 dice', xaxis=x_axis_config, yaxis=y_axis_config)
# offline.plot({'data': data, 'layout': my_layout}, filename='d6_mult.html')

# print(frequencies)

#15-9
# from plotly.graph_objs import Bar, Layout
# from plotly import offline

# from die import Die

# #Create a D6 and a D10.
# die_1 = Die()
# die_2 = Die()

# #Make some rolls, and store results in a list. 
# results = []
# for roll_num in range(1000):
#     result = die_1.roll() + die_2.roll()
#     results.append(result)
    
# #analyze the results. 

# max_result = die_1.num_sides + die_2.num_sides
# frequencies = [results.count(value) for value in range(2, max_result+1)]

# #Visualize the results.
# x_values = list(range(2, max_result+1))
# data = [Bar(x=x_values, y=frequencies)]

# x_axis_config = {'title': 'Result', 'dtick': 1}
# y_axis_config = {'title': 'Frequency of Result'}
# my_layout = Layout(title='Results of rolling two D6 1000 times.', xaxis=x_axis_config, yaxis=y_axis_config)
# offline.plot({'data': data, 'layout': my_layout}, filename='d6_comp.html')

# print(frequencies)

#15-10



