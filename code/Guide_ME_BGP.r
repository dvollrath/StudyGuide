# Load necessary libraries


year <- c(2018:2058)

data <- data.frame(year)
data$lngdppc <- 4.5 + .02*(year-2018)
data$sinv  <- .2
data$ky    <- 3.5
data$phil  <- .75

fig <- plot_ly(data, x = ~year, y = ~lngdppc, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'BGP log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP per capita',range=c(4,5.5)),
              hovermode="x unified")
api_create(fig, filename = "me-bgp-lngdppc")

fig <- plot_ly(data, x = ~year, y = ~sinv, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'BGP capital formation/GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Ratio of I/Y',range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "me-bgp-sinv")

fig <- plot_ly(data, x = ~year, y = ~phil, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'BGP labor share of costs', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Ratio of W/(W+RK)',range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "me-bgp-phil")

fig <- plot_ly(data, x = ~year, y = ~ky, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'BGP capital/output ratio', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Ratio of K/Y',range=c(1,5)),
              hovermode="x unified")
api_create(fig, filename = "me-bgp-ky")