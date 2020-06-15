# Load necessary libraries
library(devtools)
library(plotly)
library(dplyr)
library(RColorBrewer)

# Pull Maddison data into dataframe
mad <- read.csv("~/Dropbox/project/studyguide/data/maddison2010.csv", header=TRUE)

mad <- mad[which(mad$year>1819),] # only 1820 and later

mad$lndenmark <- log(mad$denmark)
mad$lnfrance <- log(mad$france)
mad$lnusa <- log(mad$usa)
mad$lnenglandgbuk <- log(mad$englandgbuk)
mad$lnhollandnetherlands <- log(mad$hollandnetherlands)

fig <- plot_ly(mad, x = ~year)
fig <- fig %>% add_trace(y = ~lnfrance, name = 'France', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnusa, name = 'USA', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnhollandnetherlands, name = 'Holland/Netherlands', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnenglandgbuk, name = 'England/UK', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita in the long run', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
api_create(fig, filename = "mad-stable-lngdppc")