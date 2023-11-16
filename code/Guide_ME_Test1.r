# Load necessary libraries
#library(devtools)
library(plotly)
library(dplyr)
library(RColorBrewer)

year <- seq(from=2020,to=2060,by=1)
rA <- rnorm(41, mean=0, sd=.04)
rB <- rnorm(41, mean=0, sd=.04)
rC <- rnorm(41, mean=0, sd=.04)
data <- data.frame(year,rA,rB,rC)

data$lngdpA <- 4.5 + .02*(data$year-2020) + data$rA
data$lngdpB <- 5.4 + 0*(data$year-2020) + data$rB
data$lngdpC <- 4.1 + .04*(data$year-2020) + data$rC

data$kyA <- 5.2 - .05*(data$year-2020) + 3*data$rA
data$kyB <- 2 + .09*(data$year-2020) + 3*data$rB
data$kyC <- 2.5 + 0*(data$year-2020) + 3*data$rC

data$siA <- .85 - .01*(data$year-2020) + .7*data$rA
data$siB <- .2 + 0*(data$year-2020) + .7*data$rB
data$siC <- .2 + 0.01*(data$year-2020) + .7*data$rC

data$phiA <- .6 + .5*data$rA
data$phiB <- .7 + .5*data$rB
data$phiC <- .8 + .5*data$rC

fig <- plot_ly(data, x = ~year) 
fig <- fig %>% add_trace(y = ~lngdpA, name = 'A', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lngdpB, name = 'B', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lngdpC, name = 'C', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP per capita',range=c(3.5,6)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/test1-level-gdppc.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(data, x = ~year) 
fig <- fig %>% add_trace(y = ~kyA, name = 'A', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~kyB, name = 'B', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~kyC, name = 'C', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(1,6)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/test1-level-ky.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(data, x = ~year) 
fig <- fig %>% add_trace(y = ~siA, name = 'A', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~siB, name = 'B', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~siC, name = 'C', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Gross fixed capital formation share', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Gross fixed capital formation share',range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/test1-level-si.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(data, x = ~year) 
fig <- fig %>% add_trace(y = ~phiA, name = 'A', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~phiB, name = 'B', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~phiC, name = 'C', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Labor share of costs', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Labor share of costs',range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/test1-level-phi.html",selfcontained = F, libdir = "lib")
