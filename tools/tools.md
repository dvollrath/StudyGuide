---
title: Tools and Data
has_children: true
nav_order: 10
---

# Tools
This contains links to code and datasets (either direct or pointers to the page where it is hosted) that are used in my course or are useful for studying growth. 

We'll use a few free online tools to do data analysis and plotting
- To run Python code [Cliprun](https://cliprun.com)
- To format fancy figures [Datawrapper](https://www.datawrapper.de)
- To host fancy figures and add notes/text [Google sites](https://sites.google.com)

## BEA consumption data
- [Consumption data organized in hierarchy](https://www.dropbox.com/scl/fi/jbmcei35y3u35uq9e1v6z/bea_consumption_data.csv?rlkey=lbyvb2iaull9irhkawodk97w1&dl=1)
- [Script to calculate expenditure growth and plot data](https://www.dropbox.com/scl/fi/zbanzt7rik1t17i9g0vgz/BEA_prepare.py?rlkey=ccwzde4wqpco1iay7ejsjtis3&dl=1)

## Penn World Tables
- [PWT main site](https://www.rug.nl/ggdc/productivity/pwt/?lang=en)
- [Main data](https://www.dropbox.com/scl/fi/6rrc8kizipa9zjrgmprph/pwt110.csv?rlkey=h3zonx7jiw0hpqffk1mj2442p&st=t4xud953&dl=1)
- [Nominal national account data](https://www.dropbox.com/scl/fi/9y61z5y0802z5unpwx0y2/pwt110_na_data.csv?rlkey=2jlj3iady46gctrv4c9m6fl7z&dl=1)
- [Labor detail](https://www.dropbox.com/scl/fi/7cpgki1gkzd0vj452u8wf/pwt110_labor_detail.csv?rlkey=qjzvk9nmpz5z1eqem3pz6oh2f&dl=1)
- [Script for levels and growth rates](https://www.dropbox.com/scl/fi/e70n1a4vzlt0ayxetkxva/PWT_prepare.py?rlkey=ypuj0913ofeasmisrvw8cbfna&dl=1)
- [Script for GDP shares](https://www.dropbox.com/scl/fi/01ropci14fy5xtye6twkh/PWT_shares.py?rlkey=7k5zx0wvnfore9rji09dyy168&dl=1)

## Compustat firm-level data
- [Main data file (huge)](https://www.dropbox.com/scl/fi/792oztozljj64rmp2t501/compustat.csv?rlkey=4gghkav9m8azf8wbp5zf901qf&dl=1)
- [Script to calculate ratios](https://www.dropbox.com/scl/fi/rxj1b83hubviubfgg49hi/Compustat_prepare.py?rlkey=1z1ciw3rwpojmlvub2hl0da0e&dl=1)

```python
import pandas as pd
import plotly.express as px
import numpy as np

df = pd.read_csv('pwt110_na_data.csv') # Read the whole dataset
df = df.sort_values(by=['countrycode', 'year']) # Sort everything by expenditure code and year first

df['shareConsumption'] = df['v_c']/df['v_gdp'] # consumption share of nominal GDP
df['shareCapForm'] = df['v_i']/df['v_gdp'] # gross capital formation share of nominal GDP
df['shareGovConsume'] = df['v_g']/df['v_gdp'] # government consumption share of nominal GDP

stable_codes = ['USA','GBR','CAN','MEX','AUS'] # Select some countries to compare

subset_df = df[df['countrycode'].isin(stable_codes)] # Get the data from just those countries

fig = px.line(subset_df, x="year", y="shareConsumption", color='countrycode')
fig.show()

fig = px.line(subset_df, x="year", y="shareCapForm", color='countrycode')
fig.show()

fig = px.line(subset_df, x="year", y="shareGovConsume", color='countrycode')
fig.show()

```