# 10-sector database 

#########################################################################
data("pwt10.01")
p <- pwt10.01 # copy dataframe for manipulation
p$rgdpopc <- round(p$rgdpo/p$pop,digits=0) # GDP per capita at PPP
p$lnrgdpopc <- round(log(p$rgdpopc),digits=2) # log GDP per capita for figure
p <- p[,c("isocode","year","lnrgdpopc","pop")]
colnames(p)[1] <- 'Country'
colnames(p)[2] <- 'Year'

sd <- read.csv("10SD_jan15.csv", header=TRUE)
sd$Extract <- (sd$AGR + sd$MIN)/sd$SUM
sd$Manuf <- (sd$MAN + sd$PU + sd$CON)/sd$SUM
sd$Service <- (sd$WRT + sd$TRA + sd$FIRE + sd$GOV + sd$OTH)/sd$SUM

va <- sd[which(sd$Variable %in% c('VA')),]
emp <- sd[which(sd$Variable %in% c('EMP')),]
q <- sd[which(sd$Variable %in% c('VA_Q05')),]

va <- merge(va,p, by = c('Country','Year'))
emp <- merge(emp,p, by = c('Country','Year'))
q <- merge(q,p, by = c('Country','Year'))

fig <- plot_ly(va, x = ~lnrgdpopc)
fig <- fig %>% add_trace(y = ~Extract, name = 'Extraction', type = 'scatter', mode = 'markers',
                          hovertext = ~paste(Country, "<br>", Year, "<br>", round(Extract,2)),
                          hoverinfo="text")
fig <- layout(fig, title = list(text = 'Extraction and GDP per capita', x=0),
              xaxis = list(title = 'Log GDP per capita'),
              yaxis = list (title = 'Extraction share of VA', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/10SD-va-extract.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(va, x = ~lnrgdpopc)
fig <- fig %>% add_trace(y = ~Manuf, type = 'scatter', mode = 'markers',
                          hovertext = ~paste(Country, "<br>", Year, "<br>", round(Manuf,2)),
                          hoverinfo="text")
fig <- layout(fig, title = list(text = 'Manufacturing and GDP per capita', x=0),
              xaxis = list(title = 'Log GDP per capita'),
              yaxis = list (title = 'Manufacturing share of VA', range=c(0,1)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/10SD-va-manuf.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(va, x = ~lnrgdpopc)
fig <- fig %>% add_trace(y = ~Service, type = 'scatter', mode = 'markers',
                         hovertext = ~paste(Country, "<br>", Year, "<br>", round(Service,2)),
                         hoverinfo="text")
fig <- layout(fig, title = list(text = 'Services and GDP per capita', x=0),
              xaxis = list(title = 'Log GDP per capita'),
              yaxis = list(title = 'Services share of VA', range=c(0,1)))
saveWidget(partial_bundle(fig), "../plotly/10SD-va-services.html",selfcontained = F, libdir = "lib")

q$lnexpc <- log(q$Extract/q$pop)
q$lnmfpc <- log(q$Manuf/q$pop)
q$lnsvpc <- log(q$Service/q$pop)