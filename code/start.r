library(devtools)
library(plotly)
library(pwt9)

Sys.setenv("plotly_username"="dvollrath")
Sys.setenv("plotly_api_key"="g86hGs9hiBrHVnbWlYGr")

data("pwt9.1")

p <- pwt9.1
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2)

stable <- p[ which(p$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[ which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

fig <- plot_ly(stable, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title='Log GDP per capita for stable growth countries',
               xaxis = list(title = 'Year'),
               yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
               hovermode="x unified")
api_create(fig, filename = "pwt-stable-lngdppc")

fig <- plot_ly(catchup, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = 'Log GDP per capita for catch-up growth countries',
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-lngdppc")