
df = NULL

# Fixed parameters
s <- .2
ga <- .02
gl <- .01
delta <- .05
alpha <- .3

# Initialize dynamic process
kycurr <- .5 # initial capital/output ratio

df = NULL # initialize a dataframe

for (t in 1:150) # do for this many periods
{
  gky <- (1-alpha)*(s/kycurr - delta - ga - gl) # calculate growth in k/y given current k/y
  df = rbind(df, data.frame(t,kycurr,gky)) # add to dataframe
  kycurr <- (1+gky)*(kycurr) # update current k/y for next period
}

# Initialize theoretical relationship
kycurr <- seq(.1,4,by=.1)
gkytheory <- (1-alpha)*(s/kycurr - delta - ga - gl)
theory <- data.frame(kycurr,gkytheory)

fig <- plot_ly(df,
    x = ~kycurr, 
    y = ~gky, 
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
  x = 1, xanchor = "right", y = 0.25, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Dynamics of capital/output growth', x=0),
              xaxis = list(title = 'Capital/Output (K/Y)', range=c(0,3.5),dtick=.5),
              yaxis = list (title = 'Growth rate of K/Y', range=c(-.05,0.25)
              )
)
api_create(fig, filename = "me-gky-dynamics")
