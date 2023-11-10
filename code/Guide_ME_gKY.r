
df = NULL

# Fixed parameters
s <- .2
ga <- .02
gl <- .01
delta <- .05
alpha <- .3

# Initialize dynamic process
kycurr <- 2 # initial capital stock
kyalt <- 5 # initial capital stock

df = NULL # initialize a dataframe
dfalt = NULL # initialize a dataframe
name = "A"
namealt = "B"

for (t in 1:150) # do for this many periods
{
  gky <- s*(1/kycurr)^(1-alpha) - delta  #(1-alpha)*(s/kycurr - delta - ga - gl) # calculate growth in k given current k/al
  df = rbind(df, data.frame(t,kycurr,gky,name)) # add to dataframe
  kycurr <- (1+gky-ga-gl)*(kycurr)# update current k/y for next period
  gky <- s*(1/kyalt)^(1-alpha) - delta #(1-alpha)*(s/kyalt - delta - ga - gl)
  dfalt = rbind(dfalt, data.frame(t,kyalt,gky,namealt)) # add to dataframe
  kyalt <- (1+gky-ga-gl)*(kyalt)
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
fig <- layout(fig, title = list(text = 'Dynamics of capital growth', x=0),
              xaxis = list(title = 'K/AL ratio', range=c(1.5,5.5),dtick=.5),
              yaxis = list (title = 'Growth rate of K', range=c(0,0.1),dtick=.01
              )
)
saveWidget(partial_bundle(fig), "../plotly/me-gky-dynamics.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-gky-dynamics")

dfgraph <- dfgraph[with(dfgraph,order(kycurr)),]

fig <- plot_ly(dfgraph, x = ~kycurr, y = ~gky, type = 'scatter', mode = 'lines')
fig <- layout(fig, title = list(text = 'Relationship of growth and level of K/Y', x=0),
              xaxis = list(title = 'Capital/output ratio',range=c(0,4.5),dtick=.5),
              yaxis = list (title = 'Growth rate of capital/output ratio', range=c(-.1,0.25))
)
saveWidget(partial_bundle(fig), "../plotly/me-gky-relationship.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-gky-relationship")

## Create evolving frames for graphing changes in growth rate
df = NULL

for (t in 1:30)
{
  kycurr <- 2^(1-alpha)
  kyalt <- 5^(1-alpha)
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
              yaxis = list (title = 'Log GDP per capita', range=c(4,5)
              )
)
saveWidget(partial_bundle(fig), "../plotly/me-lny-animated.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-lny-animated")

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
              yaxis = list (title = 'Growth rate of GDP per capita', range=c(0,.05)
              )
)
saveWidget(partial_bundle(fig), "../plotly/me-gy-animated.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "me-gy-animated")