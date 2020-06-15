# Load necessary libraries
library(devtools)
library(plotly)
library(pwt9)
library(dplyr)
library(RColorBrewer)

# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2)

# subset PWT into stable and catchup groups
stable <- p[ which(p$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[ which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

# Figures of Log GDP per capita
fig <- plot_ly(stable, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita for stable growth countries', x=0),
               xaxis = list(title = 'Year'),
               yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
               hovermode="x unified")
api_create(fig, filename = "pwt-stable-lngdppc")

fig <- plot_ly(catchup, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita for catch-up growth countries', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-lngdppc")

############################
# Figures of convergence
############################
# get 10-year lagged value of log gdppc, by country
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))
p$g10.lngdppc <- (p$lngdppc - p$lag10.lngdppc)/10

# just need the catchup group
catchup <- p[ which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

fig <- plot_ly(catchup, x = ~lag10.lngdppc, y = ~g10.lngdppc,
               color = ~country, colors = "Set1", type = 'scatter')
fig <- layout(fig, title=list(text = 'Convergence and non-convergence', x= 0),
              xaxis = list(title = 'Initial log GDP per capita',range=c(6,11)),
              yaxis = list (title = '10-year growth rate'))
api_create(fig, filename = "pwt-catchup-convergence")

############################
# Figures of K/Y ratio
############################
p1960 <- p[which(p$year >1959),] # drop 50-59 b/c of PWT initial ky guess
stable <- p1960[ which(p1960$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p1960[ which(p1960$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

fig <- plot_ly(stable, x = ~year, y = ~ky, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio for stable countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(0,7)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-ky")

fig <- plot_ly(catchup, x = ~year, y = ~ky, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio for catch-up countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(0,7)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-ky")
