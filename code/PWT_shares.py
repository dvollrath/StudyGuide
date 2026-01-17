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