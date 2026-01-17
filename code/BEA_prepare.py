import pandas as pd
import plotly.express as px

df = pd.read_csv('bea_consumption_data.csv') # Read the whole dataset
df = df[df['lowest'] == 1] # Keep only rows at the lowest level of detail (no high-level categories)
# df = df[df['level'] == 4] # An alternative to look at a medium-level of detail

df['ExpendYear'] = df['Expend'].groupby(df['year']).transform('sum') # Find total expenditure in a year

df['ExpendShare'] = df['Expend']/df['ExpendYear'] # Product expenditure share

df = df.sort_values(by=['expendcode', 'year']) # Sort everything by expenditure code and year first
df['lagExpendYear'] = df.groupby('expendcode')['ExpendYear'].shift(1) # Get *prior* year *total* expenditure
df['GrowthExpendYear'] = (df['ExpendYear'] - df['lagExpendYear'])/df['lagExpendYear'] # % growth in total expend

df['lagPrice'] = df.groupby('expendcode')['Price'].shift(1) # Get *prior* year price for the product
df['GrowthPrice'] = (df['Price'] - df['lagPrice'])/df['lagPrice'] # % growth in product price

df['GrowthAfford'] = df['GrowthExpendYear'] - df['GrowthPrice'] # Affordability growth for the product
df['lagExpendShare'] = df.groupby('expendcode')['ExpendShare'].shift(1) # Get *prior* year price for the product
df['wtdGrowthAfford'] = df['lagExpendShare']*df['GrowthAfford'] # Product contribution to total growth

df['GrowthYear'] = df['wtdGrowthAfford'].groupby(df['year']).transform('sum') # Calculate total growth for the year
# by summing the weighted affordability growth across all the products
df.to_csv('bea_prepared_data.csv', index=False) # Save this limited dataset

# Do the same calculation of total growth into a smaller data frame
growth_df = df.groupby('year')['wtdGrowthAfford'].sum().reset_index()
growth_df.to_csv('bea_growth_data.csv', index=False) # Save this limited dataset

# Create a crude figure of overall affordability growth
fig = px.line(growth_df, x="year", y="wtdGrowthAfford")
fig.show()

# We have a *lot* of product codes to work with
counts = df['expendcode'].nunique()
print('Number of unique expenditure codes:', counts)

# Create a subset of data for the 4-8 products you choose
product_codes = ['DLUGRC','DMCYRC','DMLTRC','DORSRC'] # You select a few of these codes to look at
subset_df = df[df['expendcode'].isin(product_codes)] # Get only the data related to those expenditure codes
subset_df.to_csv('bea_subset_data.csv', index=False) # Save this limited dataset

# Create a crude figure showing affordability growth for your selected serise
fig = px.line(subset_df, x="year", y="GrowthAfford", color='serieslabel')
fig.show()

# Reshape the data so we can do a fancier figure with Datawrapper
reshaped_df = subset_df.pivot(index='year', columns='serieslabel', values='GrowthAfford') # reshape how the data are stored
reshaped_df = reshaped_df.reset_index() # this is a weird thing we need to do
reshaped_df.to_csv('bea_reshaped_data.csv', index=False) # save the reshaped data



