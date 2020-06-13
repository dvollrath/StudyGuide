library(devtools)
library(plotly)

Sys.setenv("plotly_username"="dvollrath")
Sys.setenv("plotly_api_key"="g86hGs9hiBrHVnbWlYGr")

fig <- plot_ly(midwest, x = ~percollege, color = ~state, type = "box")
api_create(fig, filename = "r-docs-midwest-boxplots")