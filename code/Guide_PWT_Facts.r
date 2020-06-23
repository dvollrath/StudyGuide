# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$phil <- round(p$labsh*p$rgdpna/(p$labsh*p$rgdpna+.05*p$rnna),digits=2) # create kludge cost share of labor

# subset PWT into stable and catchup groups
stable <- p[which(p$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

############################
# Figures for log GDP per capita
############################
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
# Figures of labor share
############################
fig <- plot_ly(stable, x = ~year, y = ~labsh, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/GDP for stable growth countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Compensation share of GDP', range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-labsh")

fig <- plot_ly(catchup, x = ~year, y = ~labsh, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/GDP for catch-up growth countries', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Compensation share of GDP', range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-labsh")

############################
# Figures of labor cost share
############################
fig <- plot_ly(stable, x = ~year, y = ~phil, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/Total Costs', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'W/(W+RK)', range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-phil")

fig <- plot_ly(catchup, x = ~year, y = ~phil, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/Total Costs', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'W/(W+RK)', range=c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-phil")

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

pal <- c('#e41a1c','#377eb8','#4daf4a','#984ea3','#ff7f00','#ffff33')
pal <- setNames(pal, c("CHN", "DEU", "JPN","KOR","NGA","USA"))
fig <- plot_ly(catchup, x = ~lag10.lngdppc, y = ~g10.lngdppc, text=~year,
               color = ~isocode, 
               colors = pal, 
               type = 'scatter',
               mode = 'markers',
               hovertemplate = paste("<b>%{text}</b><br>",
                                     "%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>"),
               marker = list(size = 7)
               )
fig <- layout(fig, title=list(text = 'Convergence and non-convergence', x= 0),
              xaxis = list(title = 'Initial log GDP per capita',range=c(6,11)),
              yaxis = list (title = '10-year growth rate')
              )
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
