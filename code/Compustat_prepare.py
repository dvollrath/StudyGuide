import pandas as pd
import plotly.express as px
import numpy as np
import statsmodels.formula.api as smf

df = pd.read_csv('compustat.csv') # Read the whole dataset

df['cogs_sale_ratio'] = df['cogs']/df['sale']
df['sga_sale_ratio'] = df['xsga']/df['sale']
df['profit_ratio'] = (df['sale'] - df['cogs'] - df['xsga'])/df['sale']

lower_limit = df['sga_sale_ratio'].quantile(0.01)
upper_limit = df['sga_sale_ratio'].quantile(0.99)

df = df[(df['sga_sale_ratio'] >= lower_limit) & (df['sga_sale_ratio'] <= upper_limit) & (df['profit_ratio'] >= -2)]

# Use a regression to remove the country and industry fixed effects (averages)
res_sga = smf.ols("sga_sale_ratio ~ C(countrycode) + C(nrind2)", data=df).fit().resid
res_cogs = smf.ols("cogs_sale_ratio ~ C(countrycode) + C(nrind2)", data=df).fit().resid
res_profit = smf.ols("profit_ratio ~ C(countrycode) + C(nrind2)", data=df).fit().resid

plot_df = pd.DataFrame({ # Add the overall mean to the residuals so the plot makes sense
    'res_sga_scaled': res_sga + df['sga_sale_ratio'].mean(),
    'res_cogs_scaled': res_cogs + df['cogs_sale_ratio'].mean(),
    'res_profit_scaled': res_profit + df['profit_ratio'].mean(),
    'year': df['year']
})

bin_means = plot_df.groupby('year').mean().reset_index() # get the average by year of all the residuals

fig = px.line(bin_means, x="year", y=['res_sga_scaled', 'res_cogs_scaled','res_profit_scaled'])
fig.show()

bin_means.to_csv('compustat_plot_data.csv', index=False) # Save this limited dataset
