## Set up and plot hypothetical paths of productivity process

f.romer <- function(theta = .01, lambda=1, phi=0, sR=.02, gL=.01, L0=1, A0=.02, t=1) {
  # z is A^1-phi/R^lambda state variable, solved for first, then extract info
  z_init <- A0^(1-phi)/((L0)^(lambda)) # exclude sR from initial calc
  z_ss <- (1-phi)*theta*sR^(lambda)/(lambda*gL)
 
  # Manage time periods passed
  u <- tryCatch(
    {u = t - min(t)}, # reset any list of time periods to start at zero, for convergence calcs
    error=function(cond) { # if above fails, just take t as-is (usually a single number)
      return(t)
    }
  )
  conv <- lambda*gL # convergence parameter
  z_time <- exp(-1*conv*u)*z_init + (1-exp(-1*conv*u))*z_ss # time path of z ratio
  gA <- theta*sR^(lambda)/z_time # growth rate is gA = theta sR^lambda L^lambda/A^1-phi
  L_time <- L0*exp(gL*u) # purely for use in graphing if necessary
  # implied time path of log productivity given z and path of population
  lnA_time <- lambda*log(sR)/(1-phi) + log(z_time)/(1-phi) + lambda*log(L_time)/(1-phi) 
   
  # create list containing all results
  results <- list("time" = t, "ARratio" = z_time, "L" = L_time, "lnA" = lnA_time, "gA" = gA,
                  "ARss" = z_ss, "L_init" = L0, "A_init" = A0)
  solved <- as.data.frame(results) # convert to data frame to pass back
  
  return(solved) # return all results
}

time = seq(from = 1,to = 300, by = 1)

A <- f.romer(t = time)
B <- f.romer(t = time, A0 = A$A_init, L0 = A$L_init,gL=.005)
C <- f.romer(t = time, A0 = A$A_init, L0 = A$L_init,gL = 0.015)
D <- f.romer(t = time, A0 = A$A_init, L0 = A$L_init*4)
E <- f.romer(t = time, A0 = A$A_init, L0 = A$L_init*.25)

fig1 <- plot_ly(A, x = ~time, y = ~lnA, type = 'scatter', mode = 'lines', name='A')
fig1 <- fig1 %>% add_trace(x = ~time, y = ~lnA, data = B, name = 'B', mode = 'lines',
                          line = list(color = 'green',dash='dash'))
fig1 <- fig1 %>% add_trace(x = ~time, y = ~lnA, data = C, name = 'C', mode = 'lines',
                           line = list(color = 'red',dash='dash'))
fig1 <- fig1 %>% add_trace(x = ~time, y = ~lnA, data = D, name = 'D', mode = 'lines',
                           line = list(color = 'purple',dash='dash'))
fig1 <- fig1 %>% add_trace(x = ~time, y = ~lnA, data = E, name = 'E', mode = 'lines',
                           line = list(color = 'orange',dash='dash'))
saveWidget(partial_bundle(fig), "../plotly/quiz-lnA-level.html",selfcontained = F, libdir = "lib")
