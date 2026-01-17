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

fig = px.line(subset_df, x="year", y="labsh", color='country')
fig.show()