# Load necessary libraries
#library(devtools)
library(plotly)
library(dplyr)
library(RColorBrewer)

year <- c(2018,2019,2020,2021,2022,2023,2024)
gdp  <- c(100,104,98,103,105,107,109)
hyp <- c(100,101.45,102.91,104.40,105.91,107.44,109)

data <- data.frame(year,gdp,hyp)
data$lngdp <- log(data$gdp)
data$lnhyp <- log(data$hyp)

fig <- plot_ly(data, x = ~year, y = ~lngdp, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP',range=c(4.4,4.8)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/me-level-data.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-level-data")

fig <- plot_ly(data, x = ~year) 
fig <- fig %>% add_trace(y = ~lngdp, name = 'Actual GDP', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnhyp, name = 'Hypothetical GDP', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP',range=c(4.4,4.8)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/me-level-hyp.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-level-hyp")

fake <- data.frame(year)
fake$series1 <- log(75) + .02*(fake$year-2018)
fake$series2 <- log(100) + .02*(fake$year-2018)
fake$series3 <- log(75) + .10*(fake$year-2018)
fake$series4 <- log(100) + .10*(fake$year-2018)

fig <- plot_ly(fake, x = ~year) 
fig <- fig %>% add_trace(y = ~series1, name = 'A0=75, gA=.02', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~series2, name = 'A0=100, gA=.02', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~series3, name = 'A0=75, gA=.10', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~series4, name = 'A0=100, gA=.10', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Theoretical log GDP over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP',range=c(4,5.5)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/me-level-theory.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-level-theory")
