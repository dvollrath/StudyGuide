# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$si<- round(p$csh_i,digits=2)

p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.pop = dplyr::lag(pop, n = 10, default = NA))
p$g10.pop <- (log(p$pop) - log(p$lag10.pop))/10


p <- p[which((p$g10.pop>-.01) & (p$g10.pop <.06)),]
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
) %>% animation_opts(frame=2000)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Level of GDP p,c. and capital formation', x=0),
              xaxis = list(title = 'Capital formation share of GDP'),
              yaxis = list (title = 'Log GDP per capita')
)

api_create(fig, filename = "pwt-corr-si")


fig <- plot_ly(p,
               x = ~g10.pop, 
               y = ~lngdppc,
               size = ~pop,
               frame = ~year,
               text = ~country, 
               hoverinfo = "text",               
               type = 'scatter',
               mode = 'markers'
) %>% animation_opts(frame=2000)
fig <- fig %>% animation_button(
  x = 1, xanchor = "right", y = 0.4, yanchor = "bottom"
)
fig <- layout(fig, title = list(text = 'Level of GDP p,c. and population growth', x=0),
              xaxis = list(title = '10-year annualized pop growth rate'),
              yaxis = list (title = 'Log GDP per capita')
)

api_create(fig, filename = "pwt-corr-gl")
