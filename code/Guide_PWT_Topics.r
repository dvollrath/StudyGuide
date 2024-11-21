# Additional figures for govt, US specifics

#########################################################################
# Pull PWT into dataframe
data("pwt10.01")

p <- pwt10.01 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=3) # create log GDP per capita
p$lnpop <- round(log(p$pop),digits=3) # create log GDP per capita
p$sgov<- round(p$csh_g,digits=3)
p$lagyear <- p$year-10
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))
p$g10.lngdppc <- (p$lngdppc - p$lag10.lngdppc)/10
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lnpop = dplyr::lag(lnpop, n = 10, default = NA))
p$g10.lnpop <- (p$lnpop - p$lag10.lnpop)/10

all <- p[which(p$isocode %in% c("USA", "MEX", "DEU","JPN","KOR","CHN")),]

fig <- plot_ly(all, x = ~sgov, y = ~g10.lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and growth', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = '10-year growth rate'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-cshg-growth.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(all, x = ~sgov, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and level of GDP per capita', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-cshg-level.html",selfcontained = F, libdir = "lib")

us <- p[which(p$isocode %in% c("USA")),]
fig <- plot_ly(us, x = ~lagyear, y = ~g10.lngdppc, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = '10-year growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year growth rate', range=c(0,.04)))
saveWidget(partial_bundle(fig), "../plotly/pwt-usa-growth-rate.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(us, x = ~lagyear, y = ~g10.lnpop, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = '10-year population growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year growth rate', range=c(0,.04)))
saveWidget(partial_bundle(fig), "../plotly/pwt-usa-pop-growth.html",selfcontained = F, libdir = "lib")
