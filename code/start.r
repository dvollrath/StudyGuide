library(devtools)
library(plotly)
library(pwt9)

Sys.setenv("plotly_username"="dvollrath")
Sys.setenv("plotly_api_key"="g86hGs9hiBrHVnbWlYGr")

data("pwt9.1")

p <- pwt9.1
p$lngdppc <- log(p$rgdpe) - log(p$pop)

newp <- p[ which(p$isocode %in% c("USA", "CAN")),]

fig <- plot_ly(newp, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
api_create(fig, filename = "pwt-usa-lngdppc")
