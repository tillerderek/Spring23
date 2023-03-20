# The following programs visualize data concerning weather, earthquakes, and
# fires from JSON and CSV files.

# 16-1
# import csv
# from datetime import datetime

# import matplotlib.pyplot as plt

# filename = 'data/sitka_weather_2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     # Get dates and high temps from this file.
#     dates, prcp_amounts = [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         try:
#           #had to convert to float
#           prcp = float(row[3])
#         except ValueError:
#           print(f"Missing data for {current_date}")
#         else:
#           dates.append(current_date)
#           prcp_amounts.append(prcp)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, prcp_amounts, c='blue')

# # Format plot.
# plt.title(f"Daily precipitation amounts - 2018", fontsize=24)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Precipitation in Inches", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

# 16-2

# sitka
# import csv
# from datetime import datetime

# from matplotlib import pyplot as plt

# filename = 'data/sitka_weather_2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     # Get dates, and high temp and low temp
#     dates, highs, lows = [], [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         high = int(row[5])
#         low = int(row[6])
#         dates.append(current_date)
#         highs.append(high)
#         lows.append(low)

# # Plot the high and low temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# plt.title("Daily high and low temperatures - 2018", fontsize=24)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)
# plt.ylim(10, 130)

# plt.show()

# death valley
# import csv
# from datetime import datetime

# import matplotlib.pyplot as plt

# filename = 'data/death_valley_2018_simple.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     # Get dates and high and low temps from this file.
#     dates, highs, lows = [], [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         try:
#             high = int(row[4])
#             low = int(row[5])
#         except ValueError:
#             print(f"Missing data for {current_date}")
#         else:
#             dates.append(current_date)
#             highs.append(high)
#             lows.append(low)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# title= "Daily high and low temperatures - 2018\nDeath Valley, CA"
# plt.title(title, fontsize=20)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)
# plt.ylim(10, 130)

# plt.show()

# 16-3
# import csv
# from datetime import datetime

# import matplotlib.pyplot as plt

# filename = 'data/san_fran_2018.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     # Get dates and high and low temps from this file.
#     dates, highs, lows = [], [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         try:
#             high = int(row[4])
#             low = int(row[5])
#         except ValueError:
#             print(f"Missing data for {current_date}")
#         else:
#             dates.append(current_date)
#             highs.append(high)
#             lows.append(low)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# title= "Daily high and low temperatures - 2018\nDeath Valley, CA"
# plt.title(title, fontsize=20)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)
# plt.ylim(10, 130)

# plt.show()

# 16-4
# import csv
# from datetime import datetime

# from matplotlib import pyplot as plt

# filename = 'data/death_valley_2018_simple.csv'
# station_name = ''
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     print(header_row)
#     date_index = header_row.index('DATE')
#     high_index = header_row.index('TMAX')
#     low_index = header_row.index('TMIN')
#     name_index = header_row.index('NAME')

#     # Get dates, and high and low temperatures from this file.
#     dates, highs, lows = [], [], []
#     for row in reader:
#         if not station_name:
#             station_name = row[name_index]
#             print(station_name)

#         current_date = datetime.strptime(row[date_index], '%Y-%m-%d')
#         try:
#             high = int(row[high_index])
#             low = int(row[low_index])
#         except ValueError:
#             print(f"Missing data for {current_date}")
#         else:
#             dates.append(current_date)
#             highs.append(high)
#             lows.append(low)

# # Plot the high and low temps.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# title = f"Daily high and low temperatures - 2018\n{station_name}"
# plt.title(title, fontsize=20)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

# import csv
# from datetime import datetime

# from matplotlib import pyplot as plt

# # import csv
# from datetime import datetime

# from matplotlib import pyplot as plt

# filename = 'data/death_valley_2018_simple.csv'
# station_name = ''
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     print(header_row)
#     date_index = header_row.index('DATE')
#     high_index = header_row.index('TMAX')
#     low_index = header_row.index('TMIN')
#     name_index = header_row.index('NAME')

#     # Get dates, and high and low temperatures from this file.
#     dates, highs, lows = [], [], []
#     for row in reader:
#         if not station_name:
#             station_name = row[name_index]
#             print(station_name)

#         current_date = datetime.strptime(row[date_index], '%Y-%m-%d')
#         try:
#             high = int(row[high_index])
#             low = int(row[low_index])
#         except ValueError:
#             print(f"Missing data for {current_date}")
#         else:
#             dates.append(current_date)
#             highs.append(high)
#             lows.append(low)

# # Plot the high and low temps.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# title = f"Daily high and low temperatures - 2018\n{station_name}"
# plt.title(title, fontsize=20)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()
# station_name = ''
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     print(header_row)
#     date_index = header_row.index('DATE')
#     high_index = header_row.index('TMAX')
#     low_index = header_row.index('TMIN')
#     name_index = header_row.index('NAME')

#     # Get dates, and high and low temperatures from this file.
#     dates, highs, lows = [], [], []
#     for row in reader:
#         if not station_name:
#             station_name = row[name_index]
#             print(station_name)

#         current_date = datetime.strptime(row[date_index], '%Y-%m-%d')
#         try:
#             high = int(row[high_index])
#             low = int(row[low_index])
#         except ValueError:
#             print(f"Missing data for {current_date}")
#         else:
#             dates.append(current_date)
#             highs.append(high)
#             lows.append(low)

# # Plot the high and low temps.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.plot(dates, highs, c='red', alpha=0.5)
# ax.plot(dates, lows, c='blue', alpha=0.5)
# plt.fill_between(dates, highs, lows, facecolor='blue', alpha=0.1)

# # Format plot.
# title = f"Daily high and low temperatures - 2018\n{station_name}"
# plt.title(title, fontsize=20)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Temperature (F)", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

# 16-5
# import csv
# from datetime import datetime

# import matplotlib.pyplot as plt

# filename = 'data/avl_precip.csv'
# with open(filename) as f:
#     reader = csv.reader(f)
#     header_row = next(reader)

#     # Get dates and high temps from this file.
#     dates, prcp_amounts = [], []
#     for row in reader:
#         current_date = datetime.strptime(row[2], '%Y-%m-%d')
#         try:
#           #had to convert to float
#           prcp = float(row[3])
#         except ValueError:
#           print(f"Missing data for {current_date}")
#         else:
#           dates.append(current_date)
#           prcp_amounts.append(prcp)

# # Plot the high temperatures.
# plt.style.use('seaborn')
# fig, ax = plt.subplots()
# ax.bar(dates, prcp_amounts, color='blue')

# # Format plot.
# plt.title(f"Daily precipitation amounts - 2022\nAsheville, NC", fontsize=24)
# plt.xlabel('', fontsize=16)
# fig.autofmt_xdate()
# plt.ylabel("Precipitation in Inches", fontsize=16)
# plt.tick_params(axis='both', which='major', labelsize=16)

# plt.show()

# 16-6
# import json

# from plotly.graph_objs import Scattergeo, Layout
# from plotly import offline

# # explore the structure of the data.
# filename = 'data/eq_data_30_day_m1.json'
# with open(filename) as f:
#     all_eq_data = json.load(f)

# all_eq_dicts = all_eq_data['features']

# mags, lons, lats, hover_texts = [], [], [], []
# for eq_dict in all_eq_dicts:
#     mags.append(eq_dict['properties']['mag'])
#     lons.append(eq_dict['geometry']['coordinates'][0])
#     lats.append(eq_dict['geometry']['coordinates'][1])
#     hover_texts.append(eq_dict['properties']['title'])

# # map the earthquakes.
# data = [{
#     'type': 'scattergeo',
#     'lon': lons,
#     'lat': lats,
#     'text': hover_texts,
#     'marker': {
#         'size': [5*mag for mag in mags],
#         'color': mags,
#         'colorscale': 'Viridis',
#         'reversescale': True,
#         'colorbar': {'title': 'Magnitude'},
#     },
# }]

# my_layout = Layout(title='Global Earthquakes')

# fig = {'data': data, 'layout': my_layout}
# offline.plot(fig, filename='global_earthquakes.html')

# 16-7
# import json

# from plotly.graph_objs import Scattergeo, Layout
# from plotly import offline

# # explore the structure of the data.
# filename = 'data/eq_data_30_day_m1.json'
# with open(filename) as f:
#     all_eq_data = json.load(f)

# title = all_eq_data['metadata']['title']
# all_eq_dicts = all_eq_data['features']

# mags, lons, lats, hover_texts = [], [], [], []
# for eq_dict in all_eq_dicts:
#     mags.append(eq_dict['properties']['mag'])
#     lons.append(eq_dict['geometry']['coordinates'][0])
#     lats.append(eq_dict['geometry']['coordinates'][1])
#     hover_texts.append(eq_dict['properties']['title'])

# # map the earthquakes.
# data = [{
#     'type': 'scattergeo',
#     'lon': lons,
#     'lat': lats,
#     'text': hover_texts,
#     'marker': {
#         'size': [5*mag for mag in mags],
#         'color': mags,
#         'colorscale': 'Viridis',
#         'reversescale': True,
#         'colorbar': {'title': 'Magnitude'},
#     },
# }]

# my_layout = Layout(title=title)

# fig = {'data': data, 'layout': my_layout}
# offline.plot(fig, filename='global_earthquakes.html')

# 16-8
# import json

# # Explore the structure of the data.
# filename = 'data/eq_last_day.geojson'
# #had to add encoding to parse geojson data for some reason
# with open(filename, encoding='utf-8') as f:
#     data = json.load(f)

# readable_file = 'data/test.geojson'
# with open(readable_file, 'w') as f:
#     json.dump(data, f, indent=4)

# import json

# from plotly.graph_objs import Scattergeo, Layout
# from plotly import offline

# # Explore the structure of the data.
# filename = 'data/eq_last_day.geojson'
# #add encoding
# with open(filename, encoding='utf-8') as f:
#     all_eq_data = json.load(f)

# all_eq_dicts = all_eq_data['features']

# mags, lons, lats, hover_texts = [], [], [], []
# for eq_dict in all_eq_dicts:
#     mag = eq_dict['properties']['mag']
#     lon = eq_dict['geometry']['coordinates'][0]
#     lat = eq_dict['geometry']['coordinates'][1]
#     title = eq_dict['properties']['title']
#     mags.append(mag)
#     lons.append(lon)
#     lats.append(lat)
#     hover_texts.append(title)

# # Map the earthquakes.
# data = [{
#     'type': 'scattergeo',
#     'lon': lons,
#     'lat': lats,
#     'text': hover_texts,
# }]

# my_layout = Layout(title='Global Earthquakes')

# fig = {'data': data, 'layout': my_layout}
# offline.plot(fig, filename='global_earthquakes.html')

# 16-9
import csv
from datetime import datetime

from plotly.graph_objs import Scattergeo, Layout

from plotly import offline


# processing csv
filename = 'data/world_fires_1_day.csv'
with open(filename) as f:
    reader = csv.reader(f)
    header_row = next(reader)

    dates, brightnesses = [], []
    lats, lons = [], []
    hover_texts = []

    for row in reader:
        date = datetime.strptime(row[5], '%Y-%m-%d')
        brightness = float(row[2])

        dates.append(date)
        brightnesses.append(brightness)
        lats.append(row[0])
        lons.append(row[1])

# fire map
data = [{
    'type': 'scattergeo',
    'lon': lons,
    'lat': lats,
    'text': hover_texts,
    'marker': {
        'size': [brightness/30 for brightness in brightnesses],
        'color': brightnesses,
        'colorscale': 'Reds',
        'reversescale': True,
        'colorbar': {'title': 'Brightness'},
    },
}]

my_layout = Layout(title='Global Fire Activity')

fig = {'data': data, 'layout': my_layout}
offline.plot(fig, filename='global_fires.html')
