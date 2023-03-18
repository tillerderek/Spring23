# import csv


# filename = 'project1/data/sitka_weather_07-2021_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

# print(header_row)

# import csv


# filename = 'project1/data/sitka_weather_07-2021_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     for index, column_header in enumerate(header_row):
#         print(index, column_header)

# import csv


# filename = 'project1/data/sitka_weather_07-2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     #Get high temps from this file.
#     highs = []
#     for row in reader:
#         high = int(row[5])
#         highs.append(high)

# print(highs)

# import csv

# import matplotlib.pyplot as plt

# filename = 'project1/data/sitka_weather_07-2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     #Get high temps from this file.
#     highs = []
#     for row in reader:
#         high = int(row[5])
#         highs.append(high)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(highs, c='red')

# # Format plot.
# plt.title("Daily high temperatures - July 2018", fontsize=24)
# plt.xlabel('', fontsize=16)
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

# import csv
# from datetime import datetime

# import matplotlib.pyplot as plt

# filename = 'project1/data/sitka_weather_07-2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     #Get dates and high temps from this file.
#     dates, highs = [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         high = int(row[5])
#         dates.append(current_date)
#         highs.append(high)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red')

# # Format plot.
# plt.title("Daily high temperatures - July 2018", fontsize=24)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

import csv
from datetime import datetime

import matplotlib.pyplot as plt

filename = 'project1/data/sitka_weather_2018_simple.csv'
with open(filename) as f:
    reader = csv.reader(f)
    header_row = next(reader)

    #Get dates and high temps from this file.
    dates, highs = [], []
    for row in reader:
        current_date = datetime.strptime(row[2], '%Y-%m-%d')
        high = int(row[5])
        dates.append(current_date)
        highs.append(high)

# Plot the high temperatures.
plt.style.use('seaborn')
fig, ax = plt.subplots()
ax.plot(dates, highs, c='red')

# Format plot.
plt.title("Daily high temperatures - 2018", fontsize=24)
plt.xlabel('', fontsize=16)
fig.autofmt_xdate()
plt.ylabel("Temperature (F)", fontsize=16)
plt.tick_params(axis='both', which='major', labelsize=16)

plt.show()

