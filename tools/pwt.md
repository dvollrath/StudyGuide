---
title: Penn World Tables
parent: Tools and Data
nav_order: 2
---

# Penn World Tables
- [PWT main site](https://www.rug.nl/ggdc/productivity/pwt/?lang=en)
- [Main data](https://www.dropbox.com/scl/fi/6rrc8kizipa9zjrgmprph/pwt110.csv?rlkey=h3zonx7jiw0hpqffk1mj2442p&st=t4xud953&dl=1)
- [Nominal national account data](https://www.dropbox.com/scl/fi/9y61z5y0802z5unpwx0y2/pwt110_na_data.csv?rlkey=2jlj3iady46gctrv4c9m6fl7z&dl=1)
- [Labor detail](https://www.dropbox.com/scl/fi/7cpgki1gkzd0vj452u8wf/pwt110_labor_detail.csv?rlkey=qjzvk9nmpz5z1eqem3pz6oh2f&dl=1)

## Script for levels and growth rates
```python
import pandas as pd
import plotly.express as px
import numpy as np

df = pd.read_csv('pwt110.csv') # Read the whole dataset
df = df.sort_values(by=['countrycode', 'year']) # Sort everything by expenditure code and year first

df['logGDPpc'] = np.log(df['rgdpo']) - np.log(df['pop']) # log GDP per capita
df['laglogGDPpc'] = df.groupby('countrycode')['logGDPpc'].shift(10)
df['gGDPpc'] = (df['logGDPpc'] - df['laglogGDPpc'])/10 # Ten year growth rate
df['KYratio'] = df['rnna']/df['rgdpna']

stable_codes = ['USA','GBR','CAN','MEX','AUS'] # Select some countries to compare

subset_df = df[df['countrycode'].isin(stable_codes)] # Get the data from just those countries

fig = px.line(subset_df, x="year", y="logGDPpc", color='country')
fig.show()

fig = px.line(subset_df, x="year", y="gGDPpc", color='country')
fig.show()

```

## Script for shares of GDP
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

## Script for simple accounting
```python
import pandas as pd
import plotly.express as px
import numpy as np

df = pd.read_csv('pwt110.csv') # Read the whole dataset
df = df.sort_values(by=['countrycode', 'year']) # Sort everything by expenditure code and year first

df['logGDPpc'] = np.log(df['rgdpna']) - np.log(df['pop']) # log GDP per capita
df['laglogGDPpc'] = df.groupby('countrycode')['logGDPpc'].shift(10)
df['gy'] = (df['logGDPpc'] - df['laglogGDPpc'])/10 # Ten year growth rate

df['logK'] = np.log(df['rnna'])
df['laglogK'] = df.groupby('countrycode')['logK'].shift(10)
df['gK'] = (df['logK'] - df['laglogK'])/10

df['logL'] = np.log(df['pop'])
df['laglogL'] = df.groupby('countrycode')['logL'].shift(10)
df['gL'] = (df['logL'] - df['laglogL'])/10

alpha = .3

df['gA'] = (1/(1-alpha))*df['gy'] - (alpha/(1-alpha))*(df['gK'] - df['gL']) 
df['gKAL'] = alpha*(df['gK'] - df['gL'] - df['gA'])


# Select and plot for a single country
country_code = ['USA'] # Select a country to compare

subset_df = df[df['countrycode'].isin(country_code)] # Get the data from just those countries

fig = px.line(subset_df, x="year", y=['gy','gKAL','gA'])
fig.show()
```

## Script for accounting with human capital
```python
import pandas as pd
import plotly.express as px
import numpy as np

df = pd.read_csv('pwt110.csv') # Read the whole dataset
df = df.sort_values(by=['countrycode', 'year']) # Sort everything by expenditure code and year first

alpha = .3
gap = 10

df['logGDPpc'] = np.log(df['rgdpna']) - np.log(df['pop']) # log GDP per capita
df['laglogGDPpc'] = df.groupby('countrycode')['logGDPpc'].shift(gap)
df['gy'] = (df['logGDPpc'] - df['laglogGDPpc'])/gap # Ten year growth rate

df['logKY'] = np.log(df['rnna']) - np.log(df['rgdpna']) # capital/output ratio
df['laglogKY'] = df.groupby('countrycode')['logKY'].shift(gap)
df['gKY'] = (alpha/(1-alpha))*(df['logKY'] - df['laglogKY'])/gap

df['logHC'] = np.log(df['hc']) + np.log(df['emp']/df['pop']) # human capital level
df['laglogHC'] = df.groupby('countrycode')['logHC'].shift(gap)
df['gHC'] = (df['logHC'] - df['laglogHC'])/gap

df['gA'] = df['gy'] - df['gKY'] - df['gHC'] # productivity growth

# Select and plot for a single country
country_code = ['USA'] # Select a country to compare

subset_df = df[df['countrycode'].isin(country_code)] # Get the data from just those countries

fig = px.line(subset_df, x="year", y=['gy','gHC','gA','gKY'])
fig.show()
```
