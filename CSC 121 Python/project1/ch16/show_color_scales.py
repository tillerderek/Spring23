# The following program outputs the available plotly colorscales.

from plotly import colors

for key in colors.PLOTLY_SCALES.keys():
    print(key)
