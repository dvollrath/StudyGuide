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
  results <- list("time" = t, "KAL" = kal_time, "KY" = ky_time, "lny" = lny_time, 
                 "lny_bgp" = lny_bgp, "gK" = gK_time, "gy" = gy_time, "KY_ss" = ky_ss,
                 "KAL_ss" = kal_ss, "KY_init" = ky_init, "KAL_init" = kal_init, 
                 "gK_init" = gK_init, "gy_init" = gy_init)
  solved <- as.data.frame(results) # convert to data frame to pass back

  return(solved) # return all results
}

init <- f.solow(k0=1.2)

krange <- seq(from = 1,to = 4, by = .1)
s = f.solow(k0 = krange)

s= f.solow(t = seq(from = 1,to = 50, by = 1))

# Plot figure of scenarios and their BGP's
fig1 <- plot_ly(s, x = ~time, y = ~lny, type = 'scatter', mode = 'lines', name='Log GDP pc')
fig1 <- add_trace(fig1, x = ~time, y = ~lny_bgp, type = 'scatter', mode = 'lines', name='BGP')

fig2 <- plot_ly(s, x = ~time, y = ~gy, type = 'scatter', mode = 'lines', name='Growth rate')

fig3 <- plot_ly(s, x = ~KAL, y = ~gK, type = 'scatter', mode = 'lines+markers', name='Capital growth rate')
fig3 <- add_trace(fig3, x = ~KAL, y = .03, type = 'scatter', mode = 'lines', name='gA + gL')

fig <- subplot(fig1, fig2, fig3, nrows=3)




fig <- layout()
fig <- layout(fig, title = list(text = 'Log GDP per capita', x=0),
              xaxis = list(title = 'Time'),
              yaxis = list (title = 'Log of GDP per capita'),
              hovermode="x unified")
#orca(fig, file = "/figures/fig1.png")
saveWidget(partial_bundle(fig), "./plotly/fig1.html",selfcontained = F, libdir = "lib")