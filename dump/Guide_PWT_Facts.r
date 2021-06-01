# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$lnpop <- round(log(p$pop),digits=2) # create log population
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$phil <- round(p$labsh*p$rgdpna/(p$labsh*p$rgdpna+.05*p$rnna),digits=2) # create kludge cost share of labor
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lnpop = dplyr::lag(lnpop, n = 10, default = NA))
p$g10.lngdppc <- (p$lngdppc - p$lag10.lngdppc)/10
p$g10.lnpop <- (p$lnpop - p$lag10.lnpop)/10
p$lagyear <- p$year-10
p$csh_trade <- p$csh_x - p$csh_m
p$csh_mabs <- -1*p$csh_m

# subset PWT into stable and catchup groups
stable <- p[which(p$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]
test <- p[which(p$isocode %in% c("ETH", "ZAF","BWA")),]
usa <- p[which(p$isocode %in% c("USA")),]
all <- p[which(p$isocode %in% c("USA", "MEX", "DEU","JPN","KOR","CHN")),]

fig <- plot_ly(usa, x = ~lagyear, y = ~g10.lnpop, color = ~country, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Population growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year population growth rate', range=c(0,.02)))
api_create(fig, filename = "pwt-usa-pop-growth")

fig <- plot_ly(all, x = ~csh_g, y = ~g10.lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and growth', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = '10-year growth rate'))
api_create(fig, filename = "pwt-all-cshg-growth")

fig <- plot_ly(all, x = ~csh_g, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and level of GDP per capita', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
api_create(fig, filename = "pwt-test-chsg-level")

us <- p[which(p$isocode %in% c("USA")),]
fig <- plot_ly(us, x = ~lagyear, y = ~g10.lngdppc, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = '10-year growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year growth rate', range=c(0,.04)))
api_create(fig, filename = "pwt-usa-growth-rate")

fig <- plot_ly(all, x = ~csh_trade, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Trade and level of GDP per capita', x=0),
              xaxis = list(title = '(Exports+Imports) as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
api_create(fig, filename = "pwt-all-trade-level")

fig <- plot_ly(all, x = ~csh_x, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Exports and level of GDP per capita', x=0),
              xaxis = list(title = 'Exports as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
api_create(fig, filename = "pwt-all-export-level")

fig <- plot_ly(all, x = ~csh_mabs, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Imports and level of GDP per capita', x=0),
              xaxis = list(title = 'Imports as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
api_create(fig, filename = "pwt-all-imports-level")


############################
# Figures for log GDP per capita
############################
fig <- plot_ly(test, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-test-lngdppc")

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

