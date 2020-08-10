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

year <- c(2018:2058)
dA <- data.frame(year)
noise <- rnorm(41)
dA$lngdppc <- 4.5 + .02*(year-2018) + .02*noise
dA$sinv  <- .8 + .03*noise - .01*(year-2018)
dA$ky    <- 5 + .1*noise - .05*(year-2018)
dA$phil  <- .6 + .03*noise
dA$id <- "A"

dB <- data.frame(year)
noise <- rnorm(41)
dB$lngdppc <- 5.3 + .0005*(year-2018)+ .02*noise 
dB$sinv  <- .2 + .02*noise
dB$ky    <- 2 + .1*noise + .1*(year-2018)
dB$phil  <- .75 + .03*noise
dB$id <- "B"

dC <- data.frame(year)
noise <- rnorm(41)
dC$lngdppc <- 4 + .04*(year-2018)+ .02*noise 
dC$sinv  <- .2 + .03*noise + .01*(year-2018)
dC$ky    <- 2.5 + .1*noise
dC$phil  <- .8 + .03*noise
dC$id <- "C"

dall <- rbind(dA,dB)
dall <- rbind(dall,dC)

fig <- plot_ly(dall, x = ~year, y = ~lngdppc, linetype = ~id, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "test-bgp-lny")

fig <- plot_ly(dall, x = ~year, y = ~sinv, linetype = ~id, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Gross capital formation share', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Gross capital formation share of GDP', range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "test-bgp-sinv")

fig <- plot_ly(dall, x = ~year, y = ~ky, linetype = ~id, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(1,6)),
              hovermode="x unified")
api_create(fig, filename = "test-bgp-ky")

fig <- plot_ly(dall, x = ~year, y = ~phil, linetype = ~id, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Labor share of costs', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Labor share of costs',range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "test-bgp-phil")

year <- c(0:40)
dA <- data.frame(year)
dA$lngdppc <- 4.5 + .02*year
dA$id <- "A"

dB <- data.frame(year)
dB$lngdppc <- 4.5*exp(-.1*dB$year) + 5*(1-exp(-.1*dB$year)) + .02*year
dB$id <- "B"

dC <- data.frame(year)
dC$lngdppc <- 4.5*exp(-.1*dC$year) + 4*(1-exp(-.1*dC$year)) + .02*year
dC$id <- "C"

dD <- data.frame(year)
dD$lngdppc <- 5.5*exp(-.1*dD$year) + 4.5*(1-exp(-.1*dD$year)) + .02*year
dD$id <- "D"

dE <- data.frame(year)
dE$lngdppc <- 3.5*exp(-.1*dE$year) + 4.5*(1-exp(-.1*dE$year)) + .02*year
dE$id <- "E"

dall <- rbind(dA,dB)
dall <- rbind(dall,dC)
dall <- rbind(dall,dD)
dall <- rbind(dall,dE)

fig <- plot_ly(dall, x = ~year, y = ~lngdppc, linetype = ~id, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "test-bgp-choices")