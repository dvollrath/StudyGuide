# Figure to simulate the growth rate of productivity

# Fixed parameters
theta <- .01
lambda <- 1
gR <- .02
phi <- 0

# Initialize dynamic process
Rcurr <- 10 # this stays the same for both
Abase <- 2 # baseline scenario
Aalt  <- 10 # alternative scenario

dfbase = NULL # initialize a dataframe
dfalt = NULL # initialize a dataframe
name = "A" # name of base case is "A"
namealt = "B" # name of alt case is "B"

# This will simulate the process for gA and A period by period
for (t in 1:250) # do for this many periods
{
  # Base case
  gA <- theta*(Rcurr^lambda)/(Abase^(1-phi)) # calculate growth rate of A given current A and R
  dfbase = rbind(dfbase, data.frame(t,Abase,gA,name)) # add this new row to base dataframe
  Abase <- (1+gA)*(Abase) # Update the value of A
  
  # Alternative case
  gA <- theta*(Rcurr^lambda)/(Aalt^(1-phi)) # calculate growth rate of A given current A and R
  dfalt = rbind(dfalt, data.frame(t,Aalt,gA,namealt)) # add this new row to alt dataframe
  Aalt <- (1+gA)*(Aalt) # Update the value of A
  
  # Update the value of R for both cases
  Rcurr <- (1+gR)*Rcurr
}

colnames(dfalt) <- c("t","Abase","gA","name") # rename cols of alt DF to match base DF
dfgraph = rbind(dfbase,dfalt) # bind these two for graphing
dfgraph$ratio <- dfgraph$gA/theta # solve for ratio of R/A

# Create animated figure
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
