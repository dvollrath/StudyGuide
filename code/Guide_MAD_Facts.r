# Load necessary libraries

# Pull Maddison data into dataframe
mad <- read.csv("~/Dropbox/project/studyguide/data/maddison2010.csv", header=TRUE)

mad <- mad[which(mad$year>1819),] # only 1820 and later

mad$lndenmark <- round(log(mad$denmark),digits=2)
mad$lnfrance <- round(log(mad$france),digits=2)
mad$lnusa <- round(log(mad$usa),digits=2)
mad$lnenglandgbuk <- round(log(mad$englandgbuk),digits=2)
mad$lnhollandnetherlands <- round(log(mad$hollandnetherlands),digits=2)

fig <- plot_ly(mad, x = ~year)
fig <- fig %>% add_trace(y = ~lnfrance, name = 'France', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnusa, name = 'USA', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnhollandnetherlands, name = 'Holland/Netherlands', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnenglandgbuk, name = 'England/UK', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita in the long run', x=0),
              xaxis = list(title = 'Year', tick0=1820, dtick=20),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
api_create(fig, filename = "mad-stable-lngdppc")