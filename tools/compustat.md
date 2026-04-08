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
import numpy as np
import plotly.express as px

df = pd.read_csv('compustat_us_data.csv')

# Data Cleaning: Remove rows with negative values and zero sales to avoid division errors
df = df[(df['sale'] > 0) & (df['xsga'] >= 0) & (df['cogs'] >= 0)].copy()

# Ratio Calculations
df['cogs_sale_ratio'] = df['cogs'] / df['sale']
df['xsga_sale_ratio'] = df['xsga'] / df['sale']
df['ln_sale'] = np.log(df['sale'])

# Remove rows where xsga_sale_ratio is above the 95th percentile
xsga_95th = df['xsga_sale_ratio'].quantile(0.95)
df = df[df['xsga_sale_ratio'] <= xsga_95th].copy()

# Profitability Ratios
df['spi'] = (df['sale'] - df['cogs']) / df['sale']
df['netpi'] = (df['sale'] - df['cogs'] - df['xsga']) / df['sale']
df['acctpi'] = df['oibdp'] / df['sale']

# Define the list of ratios for calculation
ratios = ['cogs_sale_ratio', 'xsga_sale_ratio', 'spi', 'netpi', 'acctpi']

# Calculate averages for adjustment
industry_averages = df.groupby('nrind2')[ratios].transform('mean')
overall_averages = df[ratios].mean()

# Calculate the adjusted ratios: row_value - industry_avg + overall_avg
adjusted_cols = []
for ratio in ratios:
    adj_col_name = f'{ratio}_adj'
    df[adj_col_name] = df[ratio] - industry_averages[ratio] + overall_averages[ratio]
    adjusted_cols.append(adj_col_name)

# Calculate the average of each adjusted ratio by year
annual_adjusted_averages = df.groupby('year')[adjusted_cols].mean().reset_index()

# Create a figure plotting COGS and XSGA adjusted annual averages
fig_cost = px.line(
    annual_adjusted_averages, 
    x='year', 
    y=['cogs_sale_ratio_adj', 'xsga_sale_ratio_adj'],
    title='Annual Averages of Adjusted COGS and XSGA Ratios (Outliers and Negative Values Removed)',
    labels={'value': 'Adjusted Ratio', 'variable': 'Metric'}
)
fig_cost.write_html("annual_ratios_chart.html")
fig_cost.show()

# Profitability ratio figure
fig_profit = px.line(
    annual_adjusted_averages, 
    x='year', 
    y=['spi_adj', 'netpi_adj', 'acctpi_adj'],
    title='Annual Averages of Profitability Ratios (Outliers and Negative Values Removed)',
    labels={'value': 'Adjusted Ratio', 'variable': 'Metric'}
)
fig_profit.write_html("annual_profit_chart.html")
fig_profit.show()

df['bin_sale'] = pd.qcut(df['ln_sale'], 50, duplicates='drop')
binned = df.groupby('bin_sale', observed=True).agg({'netpi_adj': 'mean', 'spi_adj': 'mean', 'ln_sale': 'mean'}).reset_index(drop=True)
fig_size = px.scatter(
    binned, 
    x='ln_sale', 
    y=['spi_adj','netpi_adj'],
    title='Average profitability by size',
    labels={'value': 'Adjusted Ratio', 'variable': 'Metric'}
)
fig_size.show()
fig_size.write_html("size_profit_chart.html")

binned = df.groupby('bin_sale', observed=True).agg({'cogs_sale_ratio_adj': 'mean', 'xsga_sale_ratio_adj': 'mean', 'ln_sale': 'mean'}).reset_index(drop=True)
fig_size = px.scatter(
    binned, 
    x='ln_sale', 
    y=['cogs_sale_ratio_adj','xsga_sale_ratio_adj'],
    title='Average costs by size',
    labels={'value': 'Adjusted Ratio', 'variable': 'Metric'}
)
fig_size.show()
fig_size.write_html("size_cost_chart.html")
```
