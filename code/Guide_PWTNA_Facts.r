# Uses PWT to create a large number of figures used in Study Guide

##################################################################################
# National accounts data - from CSV b/c no API to download
##################################################################################
p <- read.csv("~/Dropbox/project/studyguide/data/pwt91_na.csv", header=TRUE)

p$scon <- round(p$v_c/p$v_gdp,digits=2) # calculate consump share
p$sgfcf <- round(p$v_i/p$v_gdp,digits=2) # calculate cap formation as share
p$sgov <- round(p$v_g/p$v_gdp,digits=2) # calculate consump share

stable <- p[ which(p$countrycode %in% c("USA", "CAN", "MEX", "GBR", "AUS")),]
catchup <- p[ which(p$countrycode %in% c("USA", "DEU", "JPN", "KOR", "CHN","NGA")),]
test <- p[ which(p$countrycode %in% c("ETH", "ZAF","BWA")),]
usa <- p[ which(p$countrycode %in% c("USA")),]

##################################################################################
# GDP shares for C, G, I
##################################################################################
fig <- plot_ly(stable, x = ~year, y = ~scon, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Consumption share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Consumption share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-scon")

fig <- plot_ly(catchup, x = ~year, y = ~scon, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Consumption share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Consumption share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-scon")

fig <- plot_ly(stable, x = ~year, y = ~sgfcf, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Gross capital formation share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Gross capital formation share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-sgfcf")

fig <- plot_ly(catchup, x = ~year, y = ~sgfcf, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Gross capital formation share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Gross capital formation share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-sgfcf")

fig <- plot_ly(stable, x = ~year, y = ~sgov, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Government spending share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Government spending share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-stable-sgov")

fig <- plot_ly(catchup, x = ~year, y = ~sgov, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Government spending share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Government spending share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-catchup-sgov")

fig <- plot_ly(test, x = ~year, y = ~sgfcf, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Gross capital formation share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Gross capital formation share',range = c(0,1)),
              hovermode="x unified")
api_create(fig, filename = "pwt-test-sgfcf")