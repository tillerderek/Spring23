import csv
from datetime import datetime

import matplotlib.pyplot as plt

filename = 'project1/data/avl_precip.csv'
with open(filename) as f:
    reader = csv.reader(f)
    header_row = next(reader)

    # Get dates and high temps from this file.
    dates, prcp_amounts = [], []
    for row in reader:
        current_date = datetime.strptime(row[2], '%Y-%m-%d')
        try:
            prcp = int(row[3])
        except ValueError:
            print(f"Missing data for {current_date}")
        else:
            dates.append(current_date)
            prcp_amounts.append(prcp)

# Plot the high temperatures.
plt.style.use('seaborn')
fig, ax = plt.subplots()
ax.plot(dates, prcp_amounts, c='red')

# Format plot.
plt.title(f"Daily precipitation amounts - 2022\nAsheville, NC", fontsize=24)
plt.xlabel('', fontsize=16)
fig.autofmt_xdate()
plt.ylabel("Precipitation in Inches", fontsize=16)
plt.tick_params(axis='both', which='major', labelsize=16)

plt.show()