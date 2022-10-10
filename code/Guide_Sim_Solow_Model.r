f.solow <- function(alpha = .3, si=.2, delta=.05, ga=.02, gl=.01, k0=1, a0=1, l0=1, t=1) {
  kal_init <- k0/(a0*l0) # initial K/AL ratio
  ky_init <- kal_init^(1-alpha) # initial K/Y ratio
  ky_ss <- si/(delta+ga+gl) # K/Y steady state
  kal_ss <- ky_ss^(1/(1-alpha)) # K/AL steady state
  gK_init <- si/ky_init - delta # initial gK
  gy_init <- (1-alpha)*(gK_init - ga - gl) + ga # initial gy
  
  # Manage time periods passed
  u <- tryCatch(
    {u = t - min(t)}, # reset any list of time periods to start at zero, for convergence calcs
    error=function(cond) { # if above fails, just take t as-is (usually a single number)
      return(t)
    }
  )
  
  conv_term <- (1-alpha)*(delta+ga+gl) # convergence term for exact solution
  ky_time <- ky_ss*(1-exp(-1*conv_term*u)) + ky_init*exp(-1*conv_term*u) # K/Y at each u
  kal_time <- ky_time^(1/(1-alpha)) # K/AL at each t
  lny_time <- (alpha/(1-alpha))*log(ky_time) + log(a0) + ga*t # Log GDP pc at each t
  lny_bgp <- (alpha/(1-alpha))*log(ky_ss) + log(a0) + ga*t # BGP of GDP pc at each t
  gK_time <- si/ky_time - delta # growth rate of K at each t
  gy_time <- (1-alpha)*(gK_time - ga - gl) + ga # growth rate of GDP pc at each t 
 
  # create list containing all results
  solved <- list("time" = t, "KAL" = kal_time, "KY" = ky_time, "lny" = lny_time, 
                 "lny_bgp" = lny_bgp, "gK" = gK_time, "gy" = gy_time, "KY_ss" = ky_ss,
                 "KAL_ss" = kal_ss, "KY_init" = ky_init, "KAL_init" = kal_init, 
                 "gK_init" = gK_init, "gy_init" = gy_init)

  return(solved) # return all results
}

init <- f.solow(k0=1.2)

krange <- seq(from = 1,to = 4, by = .1)
s = f.solow(k0 = krange)

## Set up scenarios
# Each scenario has ID, alpha, sI, gL, gA, delta, KY0, A0
scenario <- c('A','B','C','D','E')


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