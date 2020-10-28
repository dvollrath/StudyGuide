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
dA$f <- exp(-.1*dA$year)-exp(-.1*(dA$year-1))
dA$lngdppc <- 4.5 + .02*year
dA$g <- .02
dA$id <- "A"
dA$gid <- "C"

dB <- data.frame(year)
dB$f <- exp(-.1*dB$year)-exp(-.1*(dB$year-1))
dB$lngdppc <- 4.5*exp(-.1*dB$year) + 5*(1-exp(-.1*dB$year)) + .02*year
dB$g <- 4.5*dB$f + 5*(-1*dB$f) + .02
dB$id <- "B"
dB$gid <- "B"

dC <- data.frame(year)
dC$f <- exp(-.1*dC$year)-exp(-.1*(dC$year-1))
dC$lngdppc <- 4.5*exp(-.1*dC$year) + 4*(1-exp(-.1*dC$year)) + .02*year
dC$g <- 4.5*dC$f + 4*(-1*dC$f) + .02
dC$id <- "C"
dC$gid <- "D"

dD <- data.frame(year)
dD$f <- exp(-.1*dD$year)-exp(-.1*(dD$year-1))
dD$lngdppc <- 5.5*exp(-.1*dD$year) + 4.5*(1-exp(-.1*dD$year)) + .02*year
dD$g <- 5.5*dD$f + 4.5*(-1*dD$f) + .02
dD$id <- "D"
dD$gid <- "E"

dE <- data.frame(year)
dE$f <- exp(-.1*dE$year)-exp(-.1*(dE$year-1))
dE$lngdppc <- 3.5*exp(-.1*dE$year) + 4.5*(1-exp(-.1*dE$year)) + .02*year
dE$g <- 3.5*dE$f + 4.5*(-1*dE$f) + .02
dE$id <- "E"
dE$gid <- "A"

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

dall <- rbind(dA,dE)
dall <- rbind(dall,dD)
fig <- plot_ly(dall, x = ~year, y = ~g, linetype = ~gid, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Growth rate of GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Growth rate of GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "test-gy-choices")



year <- c(0:200)
dA <- data.frame(year)
dA$R <- 2*(1+.02)^year
dA$A <- ((1-.02)^year)*1*dA$R + (1- (1-.02)^year)*(.01/.02)*dA$R
dA$lnA <- log(dA$A)
dA$id <- "A"

dB <- data.frame(year)
dB$R <- 2*(1+.01)^year
dB$A <- ((1-.01)^year)*1*dB$R + (1- (1-.01)^year)*(.01/.01)*dB$R
dB$lnA <- log(dB$A)
dB$id <- "B"
dall <- rbind(dA,dB)

dC <- data.frame(year)
dC$R <- 2*(1+.001)^year
dC$A <- ((1-.001)^year)*1*dC$R + (1- (1-.001)^year)*(.01/.001)*dC$R
dC$lnA <- log(dC$A)
dC$id <- "C"
dall <- rbind(dall,dC)

dD <- data.frame(year)
dD$R <- 2*(1+.01)^year
dD$A <- ((1-.01)^year)*1*dD$R + (1- (1-.01)^year)*(.02/.01)*dD$R
dD$lnA <- log(dD$A)
dD$id <- "D"
dall <- rbind(dall,dD)

dE <- data.frame(year)
dE$R <- 2*(1+.01)^year
dE$A <- ((1-.01)^year)*1*dE$R + (1- (1-.01)^year)*(.005/.01)*dE$R
dE$lnA <- log(dE$A)
dE$id <- "E"
dall <- rbind(dall,dE)

fig <- plot_ly(dall, x = ~year, y = ~lnA, linetype = ~id, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'log Productivity (A)', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of productivity (A)'),
              hovermode="x unified")
api_create(fig, filename = "test-logA-choices")


year <- c(0:50)
dA <- data.frame(year)
dA$R <- 12*(1+.01)^year
dA$lnR <- log(dA$R)
dA$id <- "A"

dB <- data.frame(year)
dB$R <- 8*(1-.01)^year
dB$lnR <- log(dB$R)
dB$id <- "B"
dall <- rbind(dA,dB)

dC <- data.frame(year)
dC$R <- 20*(1-.03)^year
dC$lnR <- log(dC$R)
dC$id <- "C"
dall <- rbind(dall,dC)

fig <- plot_ly(dall, x = ~year, y = ~lnR, linetype = ~id, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Resources per capita (X/L)', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of resources per capita (X/L)'),
              hovermode="x unified")
api_create(fig, filename = "test-logXL-choices")