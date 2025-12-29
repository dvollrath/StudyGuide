# The resource model is just the Solow model with a more complicated prod growth term
# but with the additional terms for E and X

f.resource <- function(alpha = .2, si=.2, delta=.05, ga=.02, gl=.01, k0=1, a0=1, l0=1, t=1
                       , beta = .1, gamma = .1, sE = .001, x0 = 1, r0 = 1) {
  
  gb = (1-(beta+gamma)/(1-alpha))*ga - sE*beta/(1-alpha) - gl*(beta+gamma)/(1-alpha)
  e0 = sE*r0/l0
  x0 = x0/l0
  b0 = a0^((1-alpha-beta-gamma)/(1-alpha))*e0^(beta/(1-alpha))*x0^(gamma/(1-alpha))
  
  s <- f.solow(ga = gb, a0 = b0, alpha = alpha, si = si, delta = delta,
               gl = gl, k0 = k0, l0 = l0, t = t) # call Solow model with all other parameters as passed
  
  lnR_time <- log(r0) - sE*t
  lnE_time <- log(sE) + lnR_time
  lne_time <- lnE_time - log(l0) - gl*t
  lnx_time <- log(x0) - log(l0) - gl*t
  
  results <- list("time" = t, "KBL" = s$KAL, "KY" = s$KY, "lny" = s$lny, 
                  "lny_bgp" = s$lny_bgp, "gK" = s$gK, "gy" = s$gy, "KY_ss" = s$KY_ss,
                  "KBL_ss" = s$KAL_ss, "KY_init" = s$KY_init, "KBL_init" = s$KAL_init, 
                  "gK_init" = s$gK_init, "gy_init" = s$gy_init, "lnR" = lnR_time,
                  "lnE" = lne_time, "lne" = lne_time, "lnx" = lnx_time)
  solved <- as.data.frame(results) # convert to data frame to pass back
  
  return(solved) # return all results
}

A = f.resource(t = seq(from = 1,to = 100, by = 1))


fig1 <- plot_ly(A, x = ~time, y = ~lny, type = 'scatter', mode = 'lines', name='Log GDP pc')