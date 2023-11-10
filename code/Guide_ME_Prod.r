
df = NULL

# Fixed parameters
s <- .2
gl <- .01
delta <- .05
alpha <- .3
lambda <- .9
phi <- -.2
theta <- .01
gR <- .01

# Initialize dynamic process
kycurr <- s/(gl+delta+.02) # start near a BGP
kyalt <- s/(gl+delta+.02) # start near a BGP
Rcurr <- 10 # start everyone with same R stock
Acurr <- 2
Aalt  <- 20


df = NULL # initialize a dataframe
dfalt = NULL # initialize a dataframe
name = "A"
namealt = "B"

for (t in 1:250) # do for this many periods
{
  gA <- theta*(Rcurr^lambda)/(Acurr^(1-phi)) # calculate growth in k/y given current k/y
  gky <- (1-alpha)*(s/kycurr - delta - gA - gl) 
  df = rbind(df, data.frame(t,Acurr,gA,gky,kycurr,name)) # add to dataframe
  kycurr <- (1+gky)*(kycurr)
  Acurr <- (1+gA)*(Acurr) # update current k/y for next period
  gA <- theta*(Rcurr^lambda)/(Aalt^(1-phi))
  gky <- (1-alpha)*(s/kyalt - delta - gA - gl)
  dfalt = rbind(dfalt, data.frame(t,Aalt,gA,gky,kyalt,namealt)) # add to dataframe
  kyalt <- (1+gky)*(kyalt)
  Aalt <- (1+gA)*(Aalt)
  Rcurr <- (1+gR)*Rcurr
}

colnames(dfalt) <- c("t","Acurr","gA","gky","kycurr","name")
dfgraph = rbind(df,dfalt)

dfgraph$lny <- (alpha/(1-alpha))*log(dfgraph$ky) + 4 + log(dfgraph$Acurr)
dfgraph$gy <- (alpha/(1-alpha))*dfgraph$gky + dfgraph$gA

df <-dfgraph[order(dfgraph$name, dfgraph$t),]

fig <- plot_ly(df,
               x = ~t, 
               y = ~lny, 
               color = ~name,
               hoverinfo = "text",
               type = 'scatter',
               mode = 'lines'
)



fig <- fig %>% animation_slider(
  hide = T
)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Level of GDP per capita over time', x=0),
              xaxis = list(title = 'Time', range=c(0,30),dtick=5),
              yaxis = list (title = 'Log GDP per capita'
              )
)
saveWidget(partial_bundle(fig), "../plotly/me-lny-prodanimated.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-lny-prodanimated")
