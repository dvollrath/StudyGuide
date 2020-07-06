
df = NULL

# Fixed parameters
theta <- .01
lambda <- 1
gR <- .02
phi <- 0

# Initialize dynamic process
Rcurr <- 10
Acurr <- 2
Aalt  <- 10

df = NULL # initialize a dataframe
dfalt = NULL # initialize a dataframe
name = "A"
namealt = "B"

for (t in 1:250) # do for this many periods
{
  gA <- theta*(Rcurr^lambda)/(Acurr^(1-phi)) # calculate growth in k/y given current k/y
  df = rbind(df, data.frame(t,Acurr,gA,name)) # add to dataframe
  Acurr <- (1+gA)*(Acurr) # update current k/y for next period
  gA <- theta*(Rcurr^lambda)/(Aalt^(1-phi))
  dfalt = rbind(dfalt, data.frame(t,Aalt,gA,namealt)) # add to dataframe
  Aalt <- (1+gA)*(Aalt)
  Rcurr <- (1+gR)*Rcurr
}

colnames(dfalt) <- c("t","Acurr","gA","name")
dfgraph = rbind(df,dfalt)
dfgraph$ratio <- dfgraph$gA/theta

# Initialize theoretical relationship
fig <- plot_ly(dfgraph,
    x = ~ratio, 
    y = ~gA, 
    color = ~name,
    frame = ~t, 
    text = ~t,
    hoverinfo = "text",
    type = 'scatter',
    mode = 'markers',
    marker = list(size = 15)
  ) %>% animation_opts(frame=0, transition=0)
fig <- fig %>% animation_slider(
  hide = T
)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Dynamics of productivity growth', x=0),
              xaxis = list(title = 'Ratio of R/A'),
              yaxis = list (title = 'Growth rate',range=c(0,.06))
)

api_create(fig, filename = "me-gA-dynamics")
