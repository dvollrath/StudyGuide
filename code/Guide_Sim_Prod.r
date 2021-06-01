## Set up and plot hypothetical paths of productivity process

## Set up scenarios
# Each scenario has ID, theta, lambda, phi, gR, R0, A0
scenario <- c('A','B','C','D','E')
theta <- c(.01,.01,.01,.01,.01)
lambda <- c(1,1,1,1,.8)
phi <- c(0,.8,-.8,0,0)
gR <- c(.02,.02,.01,.04,.02)
R0 <- c(1,1,2,1,1)
A0 <- c(1,10,1,.9,10)
label <- c('C','B','D','E','A') # allows different label for test purposes

# Year vector gives total periods to run over
year <- c(0:400)
s <- 0 # initializes vector

# Merge year and scenario data to create scenario/year dataframe
all_scenario <- data.frame(scenario,theta,lambda,phi,gR,R0,A0,label) # combine scenario parameters
year_scenario <- expand.grid(year,scenario) # create year/scenario combinations
names(year_scenario) <- c("year","scenario")
s <- merge(year_scenario,all_scenario,by="scenario") # add parameters to year/scenario combos

# Make calculations of various values using theory
# z is A^1-phi/R^lambda state variable, solved for first, then extract info
s$conv <- 1-s$lambda*s$gR
s$z <- (s$conv^s$year)*(s$A0^(1-s$phi))/(s$R0^(s$lambda)) + (1-s$conv^s$year)*(1-s$phi)*s$theta/(s$lambda*s$gR)
s$RA <- 1/s$z # put this in R/A form
s$gA <- s$theta/s$z # growth rate of A follows directly
s$R <- s$R0*(1+s$gR)^(s$year) # constant growth of R
s$lnA <- log(s$z)/(1-s$phi) + s$lambda*log(s$R)/(1-s$phi) # actual log of productivity

# Plot figure of scenarios and their BGP's
fig <- plot_ly(s, x = ~year, y = ~lnA, linetype = ~scenario, type = 'scatter', mode = 'lines')
#fig <- add_trace(fig, x = ~year, y = ~lnystar, linetype = ~scenario, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Log productivity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log of productivity (A)'),
              hovermode="x unified")
#api_create(fig, filename = "sim-prod-lnA")

fig <- plot_ly(s, x = ~year, y = ~gA, linetype = ~scenario, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Growth rate of productivity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Growth rate of productivity'),
              hovermode="x unified")
#api_create(fig, filename = "sim-prod-gA")

fig <- plot_ly(s, x = ~year, y = ~z, linetype = ~scenario, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'R/A ratio', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'R/A ratio'),
              hovermode="x unified")
#api_create(fig, filename = "sim-prod-RA")