# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$phil <- round(p$labsh*p$rgdpna/(p$labsh*p$rgdpna+.05*p$rnna),digits=2) # create kludge cost share of labor

# subset PWT into stable and catchup groups
usa <- p[which(p$isocode %in% c("USA")),]

m1 <- lm(usa$lngdppc~usa$year, data=usa)

m2 <- lm(usa$lngdppc~usa$year, data=usa, subset=(year<2001))
usa$fitted <- predict(m2,usa)

fig <- plot_ly(usa, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = fitted(m1), name = 'BGP All',mode = 'lines')
fig <- fig %>% add_trace(y = ~fitted, name = 'BGP 20th',mode = 'lines')
fig <- layout(fig, title = list(text = 'Log GDP per capita for United States', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list (title = 'Log GDP per capita', range=c(9,12)),
               hovermode="x unified")
api_create(fig, filename = "pwt-apply-usa")
