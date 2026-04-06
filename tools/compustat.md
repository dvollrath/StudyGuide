---
title: Compustat
parent: Tools and Data
nav_order: 3
---

# Compustat firm level data
- [Main data file (huge)](https://www.dropbox.com/scl/fi/w495ar5u4z6n33sctvgei/compustat_us_data.csv?rlkey=gmjx49k85m5x93c3p9v92c1x9&dl=1)
- [Limited data file to work with (small)](compustat_small_data.csv)

## Script to calculate ratios
```python
import pandas as pd
import plotly.express as px
import numpy as np

# Load the csv file into a DataFrame
df = pd.read_csv('compustat_small_data.csv')

# Calculate ratios
df['cogs_sales_ratio'] = df['cogs'] / df['sale']
df['xsga_sales_ratio'] = df['xsga'] / df['sale']

# Remove observations that have negative values for any of the three ratios
df = df[
    (df['cogs_sales_ratio'] >= 0) & 
    (df['xsga_sales_ratio'] >= 0) & 
    (df['sale'] >= 0)
]

# Drop observations whose xsga_sales_ratio is above the 95th percentile
xsga_95th = df['xsga_sales_ratio'].quantile(0.95)
df = df[df['xsga_sales_ratio'] <= xsga_95th]

# Basic operating profit calculations
df['s_pi'] = (df['sale'] - df['cogs']) / df['sale']
df['net_pi'] = (df['sale'] - df['cogs'] - df['xsga']) / df['sale']

# Define the variables to analyze
variables = ['s_pi', 'net_pi', 'cogs_sales_ratio', 'xsga_sales_ratio']

# Loop to create deviations and annual averages
for var in variables:
    # 1. Industry Mean
    df[f'{var}_ind'] = df.groupby('nrind2')[var].transform('mean')
    
    # 2. Global Mean
    df[f'{var}_all'] = df[var].mean()
    
    # 3. Deviation (Adjusted value)
    df[f'{var}_dev'] = df[var] - df[f'{var}_ind'] + df[f'{var}_all']
    
    # 4. Annual average of that deviation (aligned back to original df)
    df[f'{var}_year'] = df.groupby('year')[f'{var}_dev'].transform('mean')

# Create a figure showing the yearly averages for COGS and XSGA
# We use a summarized version of the data for the plot to avoid overlapping points
plot_data = df.groupby('year')[[f'{v}_year' for v in variables]].first().reset_index()

fig = px.scatter(
    plot_data, 
    x='year', 
    y=['cogs_sales_ratio_year', 'xsga_sales_ratio_year'],
    title='Yearly Average Ratios (Industry Adjusted)',
    template = 'plotly_white',
    labels={'value': 'Adjusted Ratio Value', 'year': 'Year', 'variable': 'Ratio Type'}
)

fig.write_html("yearly_ratios.html")
# Display the plot once at the end
fig.show()


fig = px.scatter(
    plot_data, 
    x='year', 
    y=['s_pi_year', 'net_pi_year'],
    title='Yearly Average Ratios (Industry Adjusted)',
    template = 'plotly_white',
    labels={'value': 'Adjusted Ratio Value', 'year': 'Year', 'variable': 'Ratio Type'}
)
fig.write_html("profit_ratios.html")
# Display the plot once at the end
fig.show()
```
