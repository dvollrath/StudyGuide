# Energy share data

#########################################################################
# Get CSV of energy data
p <- read.csv("eia_table1_5.csv", header=TRUE, stringsAsFactors = FALSE)
p$price <- p$nom_energy_gdp/p$energy_gdp
baseprice <- with(p,price[year=="1970"])
p$price <- 100*p$price/baseprice

fig <- plot_ly(p, x = ~year, y = ~nom_energy_gdp, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy share of GDP', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy expenditure / GDP (%)', range=c(0,15)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/eia-energy-share.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(p, x = ~year, y = ~energy_gdp, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy intensity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy use / GDP ', range=c(0,15)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/eia-energy-intensity.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(p, x = ~year, y = ~price, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Implied energy price', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Implied energy price ', range=c(95,300)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/eia-energy-price.html",selfcontained = F, libdir = "lib")
