## Set up and plot hypothetical paths of GDP per capita

## Set up scenarios
# Each scenario has ID, alpha, sI, gL, gA, delta, KY0, A0
scenario <- c('A','B','C','D','E')
alpha <- c(.3,.3,.3,.3,.3)
sI <- c(.2,.2,.2,.1,.4)
gL <- c(.01,.01,.01,.01,.01)
gA <- c(.02,.02,.02,.02,.02)
delta <- c(.05,.05,.05,.05,.05)
KY0 <- c(2.5,1.5,4,2.5,2.5)
A0 <- c(10,10,10,10,10)
label <- c('C','B','D','E','A') # allows different label for test purposes

# Year vector gives total periods to run over
year <- c(0:40)
s <- 0 # initializes Solow vector

# Merge year and scenario data to create scenario/year dataframe
all_scenario <- data.frame(scenario,alpha,sI,gL,gA,delta,KY0,A0) # combine scenario parameters
year_scenario <- expand.grid(year,scenario) # create year/scenario combinations
names(year_scenario) <- c("year","scenario")
s <- merge(year_scenario,all_scenario,by="scenario") # add parameters to year/scenario combos

# Make calculations of various values using theory
s$conv <- 1 - (1-s$alpha)*(s$delta + s$gA + s$gL) # convergence factor
s$kystar <- s$sI/(s$gL+s$gA+s$delta) # steady state capital/output ratio
s$ky <- s$KY0*(s$conv^s$year) + (s$kystar)*(1-(s$conv)^s$year) # actual KY ratio
s$kylag <- s$KY0*(s$conv^(s$year-1)) + (s$kystar)*(1-(s$conv)^(s$year-1)) # actual KY ratio
s$lny <- (s$alpha/(1-s$alpha))*log(s$ky) + log(s$A0) + s$gA*s$year # actual log GDP p.c.
s$lnystar <-(s$alpha/(1-s$alpha))*log(s$kystar) + log(s$A0) + s$gA*s$year # BGP log GDP p.c.
s$gky <- log(s$ky) - log(s$kylag)
s$gy <- (s$alpha/(1-s$alpha))*s$gky + s$gA

# Plot figure of scenarios and their BGP's
fig <- plot_ly(s, x = ~year, y = ~lny, linetype = ~scenario, type = 'scatter', mode = 'lines')
#fig <- add_trace(fig, x = ~year, y = ~lnystar, linetype = ~scenario, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "sim-solow-lny")

fig <- plot_ly(s, x = ~year, y = ~gy, linetype = ~label, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Growth rates', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Growth rate of GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "sim-solow-gy")

fig <- plot_ly(s, x = ~year, y = ~ky, linetype = ~scenario, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Capital/output ratio', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio'),
              hovermode="x unified")
api_create(fig, filename = "sim-solow-ky")