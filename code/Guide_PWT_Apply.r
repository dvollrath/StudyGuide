# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$phil <- round(p$labsh*p$rgdpna/(p$labsh*p$rgdpna+.05*p$rnna),digits=2) # create kludge cost share of labor
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag1.pop = dplyr::lag(pop, n = 1, default = NA))
p$g1.pop <- (log(p$pop) - log(p$lag1.pop))/1
p$si<- round(p$csh_i,digits=2)

# subset PWT into stable and catchup groups
usa <- p[which(p$isocode %in% c("USA")),]
deu <- p[which(p$isocode %in% c("DEU")),]
kor <- p[which(p$isocode %in% c("KOR")),]
chn <- p[which(p$isocode %in% c("CHN")),]
comp <- p[which(p$isocode %in% c("USA","CHN","KOR")),]

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

m2 <- lm(deu$lngdppc~deu$year, data=deu, subset=(year>1990))
deu$fitted <- predict(m2,deu)

fig <- plot_ly(deu, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~fitted, name = 'BGP',mode = 'lines')
fig <- layout(fig, title = list(text = 'Log GDP per capita for Germany', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita', range=c(7,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-deu")

fig <- plot_ly(deu, x = ~year, y = ~ky, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital/output for Germany', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Capital/output ratio', range=c(3,5)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply--ky-deu")

m1 <- lm(kor$lngdppc~kor$year, data=kor, subset=(year<1963))
kor$fitted1 <- predict(m1,kor)
m2 <- lm(kor$lngdppc~kor$year, data=kor, subset=(year>2009))
kor$fitted2 <- predict(m2,kor)

fig <- plot_ly(kor, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~fitted1, name = 'BGP before',mode = 'lines')
fig <- fig %>% add_trace(y = ~fitted2, name = 'BGP after',mode = 'lines')
fig <- layout(fig, title = list(text = 'Log GDP per capita for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita', range=c(6.5,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-kor")

fig <- plot_ly(kor, x = ~year, y = ~csh_i, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital formation share of GDP for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Capital formation share of GDP', range=c(0,0.6)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-si-kor")

fig <- plot_ly(kor, x = ~year, y = ~g1.pop, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Population growth for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Population growth rate', range=c(0,0.05)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-gl-kor")


m1 <- lm(chn$lngdppc~chn$year, data=chn, subset=(year<1970))
chn$fitted1 <- predict(m1,chn)
chn$fitted2 <- predict(m2,chn)

fig <- plot_ly(chn, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~fitted1, name = 'BGP before',mode = 'lines')
fig <- fig %>% add_trace(y = ~fitted2, name = 'S. Korea BGP',mode = 'lines')
fig <- layout(fig, title = list(text = 'Log GDP per capita for China', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita', range=c(6.5,11)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-chn")


fig <- plot_ly(chn, x = ~year, y = ~csh_i, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Capital formation share of GDP for China', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Capital formation share of GDP', range=c(0,0.6)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-si-chn")

fig <- plot_ly(chn, x = ~year, y = ~g1.pop, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Population growth for China', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Population growth rate', range=c(-.01,0.05)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-gl-chn")

fig <- plot_ly(comp, x = ~year, y = ~lngdppc, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita ', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita', range=c(6.5,12)),
              hovermode="x unified")
api_create(fig, filename = "pwt-apply-comp")