# Load necessary libraries
library(devtools)
library(plotly)
library(dplyr)
library(RColorBrewer)

year <- c(2018,2019,2020,2021,2022,2023,2024)

data <- list()
for(step in 1:5){
  data[[step]] <- list(visible=FALSE,
                       name = paste0('v= ',step),
                       year=year,
                       lngdp = log(step+2) + .1*(year-2018))
}

steps <- list()
fig <- plot_ly()
for (i in 1:5) {
  fig <- add_lines(fig,x=data[i][[1]]$year,  y=data[i][[1]]$lngdp, visible = data[i][[1]]$visible, 
                   name = data[i][[1]]$name, type = 'scatter', mode = 'lines+markers', hoverinfo = 'name', 
                   line=list(color='00CED1'), showlegend = FALSE)
  
  step <- list(args = list('visible', rep(FALSE, length(data))),
               method = 'restyle')
  step$args[[2]][i] = TRUE  
  steps[[i]] = step 
}  

fig <- fig %>%
  layout(sliders = list(list(active = 1,
                             currentvalue = list(prefix = "A(0): "),
                             steps = steps)),
         yaxis = list(title='Log GDP',range=c(1,3)),
         xaxis = list(range=c(2018,2024))
         )

fig

A_range <- data.frame(seq(1,10,1))
g_range <- data.frame(seq(0,.1,.01))
colnames(A_range) <- "A"
colnames(g_range) <- "g"

All_A <- list()
for (i in 1:length(A_range[,])) { 
  All_A[[i]] <- list(method = "relayout",
                       args = list(A_range$A[i]),
                       label = A_range$A[i])
}

All_g <- list()
for (i in 1:length(g_range[,])) { 
  All_g[[i]] <- list(method = "relayout",
                     args = list(g_range$g[i]),
                     label = g_range$g[i])
}

fig <- plot_ly()
fig <- add_trace()
fig <- fig %>% layout(sliders = list(
                list(
                  active = length(A_range[,])/2,
                            currentvalue = list(prefix = "A(0): "),
                            pad = list(t=20),
                            steps = All_A),
                list(
                  active = length(g_range[,])/2,
                  currentvalue = list(prefix = "g: "),
                  pad = list(t=20),
                  steps = All_g)
                )
                )

#api_create(fig, filename = "me-level-data")
