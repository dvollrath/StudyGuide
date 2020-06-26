
df = NULL

# Fixed parameters
s <- .2
ga <- .02
gl <- .01
delta <- .05
alpha <- .3

# Initialize dynamic process
kycurr <- .5 # initial capital/output ratio
kyalt <- 4 # initial capital/output ratio

df = NULL # initialize a dataframe
dfalt = NULL # initialize a dataframe
name = "A"
namealt = "B"

for (t in 1:150) # do for this many periods
{
  gky <- (1-alpha)*(s/kycurr - delta - ga - gl) # calculate growth in k/y given current k/y
  df = rbind(df, data.frame(t,kycurr,gky,name)) # add to dataframe
  kycurr <- (1+gky)*(kycurr) # update current k/y for next period
  gky <- (1-alpha)*(s/kyalt - delta - ga - gl)
  dfalt = rbind(dfalt, data.frame(t,kyalt,gky,namealt)) # add to dataframe
  kyalt <- (1+gky)*(kyalt)
}

colnames(dfalt) <- c("t","kycurr","gky","name")
dfgraph = rbind(df,dfalt)

# Initialize theoretical relationship
fig <- plot_ly(dfgraph,
    x = ~kycurr, 
    y = ~gky, 
    color = ~name,
    frame = ~t, 
    text = ~t,
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers',
    marker = list(size = 15)
  )
fig <- fig %>% animation_slider(
  hide = T
)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Dynamics of capital/output growth', x=0),
              xaxis = list(title = 'Capital/Output (K/Y)', range=c(0,4.5),dtick=.5),
              yaxis = list (title = 'Growth rate of K/Y', range=c(-.1,0.25)
              )
)
api_create(fig, filename = "me-gky-dynamics")

dfgraph <- dfgraph[with(dfgraph,order(kycurr)),]

fig <- plot_ly(dfgraph, x = ~kycurr, y = ~gky, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Relationship of growth and level of K/Y', x=0),
              xaxis = list(title = 'Capital/output ratio',range=c(0,4.5),dtick=.5),
              yaxis = list (title = 'Growth rate of capital/output ratio', range=c(-.1,0.25))
)
api_create(fig, filename = "me-gky-relationship")

## Create evolving frames for graphing changes in growth rate
df = NULL

for (t in 1:30)
{
  kycurr <- .5
  kyalt <- 4
  kybgp <- 2.5
  dftemp = NULL
  dfalt = NULL
  dfbgp = NULL

  for (k in 1:t) # do for this many periods
  {
    name <- "A"
    ky <- kycurr        
    gky <- (1-alpha)*(s/ky - delta - ga - gl) # calculate growth in k/y given current k/y
    dftemp = rbind(dftemp, data.frame(t,k,ky,gky,name)) # add to dataframe
    kycurr <- (1+gky)*(ky) # update current k/y for next period
    name <- "B"
    ky <- kyalt    
    gky <- (1-alpha)*(s/ky - delta - ga - gl)
    dfalt = rbind(dfalt, data.frame(t,k,ky,gky,name)) # add to dataframe
    kyalt <- (1+gky)*(ky) # update current k/y for next period
    name <- "BGP"
    ky <- kybgp
    gky <- (1-alpha)*(s/ky - delta - ga - gl)
    dfalt = rbind(dfalt, data.frame(t,k,ky,gky,name)) # add to dataframe
    kybgp <- (1+gky)*(ky) # update current k/y for next period
  }
  df = rbind(df,dftemp)
  df = rbind(df,dfalt)
  df = rbind(df,dfbgp)
}


df$lny <- (alpha/(1-alpha))*log(df$ky) + 4 + df$k*ga
df$gy <- ga + (alpha/(1-alpha))*df$gky

df <-df[order(df$name, df$t, df$k),]
fig <- plot_ly(df,
               x = ~k, 
               y = ~lny, 
               frame = ~t,
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
              yaxis = list (title = 'Log GDP per capita', range=c(3,6)
              )
)

api_create(fig, filename = "me-lny-animated")

fig <- plot_ly(df,
               x = ~k, 
               y = ~gy, 
               frame = ~t,
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
fig <- layout(fig, title = list(text = 'Growth rate of GDP per capita over time', x=0),
              xaxis = list(title = 'Time', range=c(0,30),dtick=5),
              yaxis = list (title = 'Growth rate of GDP per capita', range=c(0,.15)
              )
)

api_create(fig, filename = "me-gy-animated")