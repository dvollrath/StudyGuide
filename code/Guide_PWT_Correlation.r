# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$si<- round(p$csh_i,digits=2)

p <- p[which((p$csh_i>0) & (p$csh_i <1)),]
p <-  p[which(p$year %in% c(1950,1960,1970,1980,1990,2000,2010,2015)),]

fig <- plot_ly(p,
               x = ~si, 
               y = ~lngdppc,
               size = ~pop,
               frame = ~year,
               text = ~country, 
               hoverinfo = "text",               
               type = 'scatter',
               mode = 'markers'
)
fig <- fig %>% animation_slider(
  hide = F
)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- fig %>% animation_opts(
  10000, easing = "elastic", redraw = FALSE
)
fig <- layout(fig, title = list(text = 'Level of GDP p,c. and capital formation', x=0),
              xaxis = list(title = 'Capital formation share of GDP'),
              yaxis = list (title = 'Log GDP per capita')
)

api_create(fig, filename = "pwt-corr-si")
