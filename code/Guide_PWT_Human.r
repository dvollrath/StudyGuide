# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$emppop <- round(p$emp/p$pop,digits=2) # employee/pop ratio

catchup <- p[ which(p$isocode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]

fig <- plot_ly(catchup, x = ~year, y = ~emppop, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Employee/Pop ratio by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Employee/pop ratio',range=c(0.2,0.8)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-emppop")

p <- read.csv("~/Dropbox/project/studyguide/data/pwt91_labor_detail.csv", header=TRUE)
catchup <- p[ which(p$countrycode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]
test <- p[ which(p$countrycode %in% c("ETH", "ZAF", "BWA")),]

fig <- plot_ly(test, x = ~year, y = ~yr_sch, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Years of schooling by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Avg. years of schooling',range=c(0,15)),
              hovermode="x unified")
api_create(fig, filename = "pwt-test-yrsch")

fig <- plot_ly(catchup, x = ~year, y = ~yr_sch, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Years of schooling by country', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Avg. years of schooling',range=c(0,15)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-yrsch")

