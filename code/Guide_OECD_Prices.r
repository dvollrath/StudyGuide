# Uses OECD to create figure on energy prices

##################################################################################
# Energy prices and figure
##################################################################################
all <- read.csv("~/Dropbox/project/studyguide/data/OECD_CPI_All.csv", header=TRUE)
all <- select(all,LOCATION,Country,TIME,Value)
colnames(all) <- c("isocode","Country","Year","CPIAll")

ener <- read.csv("~/Dropbox/project/studyguide/data/OECD_CPI_Energy.csv", header=TRUE)
ener <- select(ener,LOCATION,Country,TIME,Value)
colnames(ener) <- c("isocode","Country","Year","CPIEnergy")

d <- merge(all,ener,by = c('isocode','Year')) # merge All and Energy CPI data
d$diff <- d$CPIAll-d$CPIEnergy # take differences to see relative inflation

d <- mutate(group_by(d,isocode), cumdiff=rev(cumsum(diff))) # accumulate diffs to get index of relative prices
d$relenergy <- exp(d$cumdiff/100) # put in level terms
  
f <- d[which(d$isocode %in% c("USA","GBR","JPN","KOR","CHL")),]

fig <- plot_ly(f, x = ~Year, y = ~relenergy, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Relative price of energy', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real energy price (2019=1)'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-cpi-energy.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-cpi-energy")
