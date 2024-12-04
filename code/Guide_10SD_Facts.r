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
q <- q[,c("Country","Year","Extract","Manuf","Service")]
colnames(q)[3] <- 'QExtract'
colnames(q)[4] <- 'QManuf'
colnames(q)[5] <- 'QService'
q <- merge(q,emp, by = c('Country', 'Year'))
q$qpwExtract <- log(q$QExtract/q$Extract)
q$qpwManuf <- log(q$QManuf/q$Extract)
q$qpwService <- log(q$QService/q$Extract)

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

q <- q[which(q$Country %in% c('IND','FRA','MEX')),]
fig <- plot_ly(q, x = ~lnrgdpopc)
fig <- fig %>% add_trace(y = ~qpwExtract, name = 'Extraction', 
                        type = 'scatter', mode = 'markers',
                         hovertext = ~paste(Country, "<br>", Year, "<br>", round(Extract,2)),
                         hoverinfo="text")
fig <- fig %>% add_trace(y = ~qpwManuf, name = 'Manufacturing',
                         type = 'scatter', mode = 'markers',
                         hovertext = ~paste(Country, "<br>", Year, "<br>", round(Extract,2)),
                         hoverinfo="text")
fig <- fig %>% add_trace(y = ~qpwService, name = 'Services',
                         type = 'scatter', mode = 'markers',
                         hovertext = ~paste(Country, "<br>", Year, "<br>", round(Extract,2)),
                         hoverinfo="text")
fig <- layout(fig, title = list(text = 'Output per worker acros sectors', x=0),
              xaxis = list(title = 'Log GDP per capita'),
              yaxis = list(title = 'Log output per worker'))
saveWidget(partial_bundle(fig), "../plotly/10SD-output-pw.html",selfcontained = F, libdir = "lib")
