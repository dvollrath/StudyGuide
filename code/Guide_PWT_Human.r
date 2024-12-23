# Uses PWT to create a large number of figures used in Study Guide

##################################################################################
# Get employee/pop ratio from PWT API
##################################################################################
s <- read.csv("~/Dropbox/project/studyguide/data/pwt1001_labor_detail.csv", header=TRUE)

data("pwt10.01")

p <- pwt10.01 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$emppop <- round(p$emp/p$pop,digits=2) # employee/pop ratio

catchup <- p[ which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

fig <- plot_ly(catchup, x = ~year, y = ~emppop, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Employee/Pop ratio by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Employee/pop ratio',range=c(0.2,0.8)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-emppop.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-emppop")

##################################################################################
# Get labor detail from PWT CSV file
##################################################################################

catchup <- s[ which(s$countrycode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]
test <- s[ which(s$countrycode %in% c("ETH", "ZAF", "BWA")),]

fig <- plot_ly(test, x = ~year, y = ~yr_sch, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Years of schooling by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Avg. years of schooling',range=c(0,15)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-test-yrsch.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-test-yrsch")

fig <- plot_ly(catchup, x = ~year, y = ~yr_sch, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Years of schooling by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Avg. years of schooling',range=c(0,15)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-catchup-yrsch.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-catchup-yrsch")

