# Uses PWT to create a large number of figures used in Study Guide

##################################################################################
# Pull PWT into dataframe
data("pwt10.01")

##################################################################################
# Create variables for figures
##################################################################################
p <- pwt10.01 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$lnpop <- round(log(p$pop),digits=2) # create log population
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$phil <- round(p$labsh*p$rgdpna/(p$labsh*p$rgdpna+.05*p$rnna),digits=2) # create kludge cost share of labor
p <- p %>% group_by(isocode) %>% mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA)) # 10-year lagged log GDP p.c.
p <- p %>% group_by(isocode) %>% mutate(lag10.lnpop = dplyr::lag(lnpop, n = 10, default = NA)) # 10-year lag log population
p$g10.lngdppc <- (p$lngdppc - p$lag10.lngdppc)/10 # 10-year growth rate of GDP p.c. 
p$g10.lnpop <- (p$lnpop - p$lag10.lnpop)/10 # 10-year growth rate of population
p$lagyear <- p$year-10 # initial year for plotting
p$csh_trade <- p$csh_x - p$csh_m # total trade/GDP
p$csh_mabs <- -1*p$csh_m # absolute value of imports/GDP

##################################################################################
# subset PWT into various groups for plotting
##################################################################################
stable <- p[which(p$isocode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]
test <- p[which(p$isocode %in% c("ETH", "ZAF","BWA")),]
usa <- p[which(p$isocode %in% c("USA")),]
mix <- p[which(p$isocode %in% c("USA", "MEX", "DEU","JPN","KOR","CHN")),]

##################################################################################
# US-only plots
##################################################################################
fig <- plot_ly(usa, x = ~lagyear, y = ~g10.lnpop, color = ~country, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Population growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year population growth rate', range=c(0,.02)))
saveWidget(partial_bundle(fig), "../plotly/pwt-usa-pop-growth.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-usa-pop-growth")

fig <- plot_ly(usa, x = ~lagyear, y = ~g10.lngdppc, type = 'scatter', mode='lines+markers', colors = "Set1")
fig <- layout(fig, title = list(text = '10-year growth rate', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '10-year growth rate', range=c(0,.04)))
saveWidget(partial_bundle(fig), "../plotly/pwt-usa-growth-rate.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-usa-growth-rate")

##################################################################################
# Plots of government spending and growth/level
##################################################################################
fig <- plot_ly(mix, x = ~csh_g, y = ~g10.lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and growth', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = '10-year growth rate'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-cshg-growth.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-all-cshg-growth")

fig <- plot_ly(mix, x = ~csh_g, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Government and level of GDP per capita', x=0),
              xaxis = list(title = 'Gov. spending share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
saveWidget(partial_bundle(fig), "../plotly/pwt-test-chsg-level.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-test-chsg-level")

##################################################################################
# Plots of trade and growth/level
##################################################################################
fig <- plot_ly(mix, x = ~csh_trade, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Trade and level of GDP per capita', x=0),
              xaxis = list(title = '(Exports+Imports) as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-trade-level.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-all-trade-level")

fig <- plot_ly(mix, x = ~csh_x, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Exports and level of GDP per capita', x=0),
              xaxis = list(title = 'Exports as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-export-level.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-all-export-level")

fig <- plot_ly(mix, x = ~csh_mabs, y = ~lngdppc, color = ~country, type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Imports and level of GDP per capita', x=0),
              xaxis = list(title = 'Imports as share of GDP'),
              yaxis = list (title = 'Log GDP per capita'))
saveWidget(partial_bundle(fig), "../plotly/pwt-all-imports-level.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-all-imports-level")

##################################################################################
# Basic BGP plots of log GDP per capita
##################################################################################
fig <- plot_ly(test, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-test-lngdppc.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-test-lngdppc")

fig <- plot_ly(stable, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita for stable growth countries', x=0),
               xaxis = list(title = 'Year'),
               yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
               hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-stable-lngdppc.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-stable-lngdppc")

fig <- plot_ly(catchup, x = ~year, y = ~lngdppc, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita for catch-up growth countries', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-lngdppc.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-lngdppc")

##################################################################################
# Plots of labor share of GDP and costs
##################################################################################
fig <- plot_ly(stable, x = ~year, y = ~labsh, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/GDP for stable growth countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Compensation share of GDP', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-stable-labs.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-stable-labsh")

fig <- plot_ly(catchup, x = ~year, y = ~labsh, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/GDP for catch-up growth countries', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Compensation share of GDP', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-labsh.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-labsh")

fig <- plot_ly(stable, x = ~year, y = ~phil, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/Total Costs', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'W/(W+RK)', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-stable-phil.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-stable-phil")

fig <- plot_ly(catchup, x = ~year, y = ~phil, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Compensation/Total Costs', x=0), 
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'W/(W+RK)', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-phil.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-phil")

##################################################################################
# Convergence plot
##################################################################################
# need to manipulate the palette here to get each country to show up clearly
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
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-convergence.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-convergence")

##################################################################################
# Plots of K/Y ratio
##################################################################################
# dropping 1950-59 because these depend on PWT guesses on initial K/Y
stable1960 <- stable[which(stable$year >1959),] 
catchup1960 <- catchup[which(catchup$year >1959),] 

fig <- plot_ly(stable1960, x = ~year, y = ~ky, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio for stable countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(0,7)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-stable-ky.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-stable-ky")

fig <- plot_ly(catchup1960, x = ~year, y = ~ky, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output ratio for catch-up countries', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Capital/output ratio',range=c(0,7)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-ky.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-ky")

