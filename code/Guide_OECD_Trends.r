# Pull OECD into dataframe
work <- get_dataset("PERS_FUNC")

fte <- work
fte <- fte[which(fte$SECTPERF %in% c("_T")),]
fte <- fte[which(fte$FUNCTION %in% c("RSE")),]
fte <- fte[which(fte$GENDER %in% c("_T")),]
fte <- fte[which(fte$MEASURE %in% c("FTE")),]
fte <- fte[which(fte$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]

fig <- plot_ly(fte, x = ~obsTime, y = ~obsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'FTE R&D Workers'),
              hovermode="x unified")


p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$acctky <- (.3/(1-.3))*log(p$ky)
p$accthc <- log(p$hc)
p$accttfp <- p$lngdppc - p$acctky - p$accthc
p$inittfp <- with(p, accttfp[year == "1960"][match(isocode, isocode[year == "1960"])])
p$inithc <- with(p, accthc[year == "1960"][match(isocode, isocode[year == "1960"])])
p$initky <- with(p, acctky[year == "1960"][match(isocode, isocode[year == "1960"])])

p$kyonly <- round(p$inittfp + p$inithc + p$acctky,digits=2)
p$hconly <- round(p$inittfp + p$accthc + p$initky,digits=2)
p$tfponly <- round(p$accttfp + p$inithc + p$initky,digits=2)
p$input <- round(p$inittfp + p$accthc + p$acctky,digits=2)

usa <- p[which(p$isocode %in% c("USA")),]
deu <- p[which(p$isocode %in% c("DEU")),]
kor <- p[which(p$isocode %in% c("KOR")),]
jpn <- p[which(p$isocode %in% c("JPN")),]
chn <- p[which(p$isocode %in% c("CHN")),]
comp <- p[which(p$isocode %in% c("USA","CHN","KOR")),]

fig <- plot_ly(usa, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', mode = 'lines')
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for United States', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list (title = 'Log GDP per capita',range=c(9,11)),
               hovermode="x unified")
api_create(fig, filename = "pwt-account-usa")

fig <- plot_ly(kor, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', mode = 'lines')
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "pwt-account-kor")