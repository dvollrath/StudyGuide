# Pull OECD into dataframe
all <- read.csv("~/Dropbox/project/studyguide/data/OECD_CPI_All.csv", header=TRUE)
all <- select(all,LOCATION,Country,TIME,Value)
colnames(all) <- c("isocode","Country","Year","CPIAll")

ener <- read.csv("~/Dropbox/project/studyguide/data/OECD_CPI_Energy.csv", header=TRUE)
ener <- select(ener,LOCATION,Country,TIME,Value)
colnames(ener) <- c("isocode","Country","Year","CPIEnergy")

d <- merge(all,ener,by = c('isocode','Year'))
d$index <- 100
d$diff <- d$CPIAll-d$CPIEnergy

d <- mutate(group_by(d,isocode), cumdiff=rev(cumsum(diff)))
d$relenergy <- exp(d$cumdiff/100)
  
f <- d[which(d$isocode %in% c("USA","GBR","JPN","KOR","CHL")),]

fig <- plot_ly(f, x = ~Year, y = ~relenergy, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Relative price of energy', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real energy price (2019=1)'),
              hovermode="x unified")
api_create(fig, filename = "oecd-cpi-energy")

dat = WDI(indicator=c('GDPE' = 'EG.GDP.PUSE.KO.PP.KD','EGDP'='EG.USE.COMM.GD.PP.KD','GDPE2'='EG.GDP.PUSE.KO.PP','EGDP2'='EG.EGY.PRIM.PP.KD'),country='all')
f <- dat[which(dat$iso2c %in% c("US","JP","KR","CN","NG","GB")),]
fig <- plot_ly(f, x = ~year, y = ~GDPE, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'GDP per unit of energy', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'GDP per unit of energy (kg oil equiv)'),
              hovermode="x unified")
api_create(fig, filename = "wdi-energy-gdpe")