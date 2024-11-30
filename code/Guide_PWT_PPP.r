# PPP figure and data

##################################################################################
# National accounts data - from CSV b/c no API to download
##################################################################################
p <- read.csv("~/Dropbox/project/studyguide/data/pwt100.csv", header=TRUE)

p$ppp <- round(p$pl_gdpo*p$xr,digits=1) # PPP for display
p$xrshow <- round(p$xr,digits=1) # XR for display
p$cgdpopc <- round(p$cgdpo/p$pop,digits=0) # GDP per capita at PPP
p$xgdpopc <- round(p$cgdpopc*p$pl_gdpo,digits=0) # GDP per capita at exchange rates (PL = PPP/XR)
p$realxr <- round(p$pl_gdpo,digits=2) # Real exchange rate
p$lncgdpopc <- round(log(p$cgdpopc),digits=2) # log GDP per capita for figure

catchup <- p[ which(p$countrycode %in% c("USA", "MEX", "JPN", "KOR", "CHN", "NGA","KEN","IND")),]

figdata <- p[which(p$year %in% c("2017")),]
figdata <- figdata[which(figdata$realxr < 5),]

catchup <- catchup[which(catchup$year %in% c("2017")),]
catchup <- catchup[,c("country","ppp","xrshow","realxr","cgdpopc","xgdpopc")]
names(catchup) <- c("Country","PPP","XRate","Price level","GDPpc at PPP","GDPpc at XRate")

tab <- datatable(catchup,rownames = FALSE,  class = 'display', 
                 extensions = c('Buttons','FixedHeader'), 
                 options=list(dom = 'lfrtBp',
                              buttons = c('csv')
                 )
)
saveWidget(tab, "../plotly/pwt-ppp-acct.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(figdata, x = ~lncgdpopc, y = ~realxr, text = ~country, hoverinfo = "text", type = 'scatter', mode='markers', colors = "Set1")
fig <- layout(fig, title = list(text = 'Prices and GDP per capita', x=0),
              xaxis = list(title = 'Log Real GDP per capita'),
              yaxis = list(title = 'Price level'))
saveWidget(fig, "../plotly/pwt-ppp-realxr.html",selfcontained = F, libdir = "lib")