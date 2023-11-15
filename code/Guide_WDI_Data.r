# Uses WDI to create a large number of figures used in Study Guide

dat = WDI(indicator=c('DBSCORE' = 'IC.BUS.DFRN.XQ',
                      'DB1014'='IC.BUS.EASE.DFRN.DB1014',
                      'DB15'='IC.BUS.EASE.DFRN.DB15',
                      'DB16'='IC.BUS.EASE.DFRN.DB16',
                      'DB1719' = 'IC.BUS.EASE.DFRN.XQ.DB1719',
                      'DBRANK'='IC.BUS.EASE.XQ',
                      'GDPPC' = 'NY.GDP.PCAP.PP.KD'
)
,country='all')
write.csv(fte,file="WDI_DOINGBUSINESS.csv",row.names=FALSE, na="") # save in case

f <- dat[which(dat$year %in% c("2018")),]
f$lnGDPPC = log(f$GDPPC)
fig <- plot_ly(f, x = ~lnGDPPC, y = ~DBSCORE, text = ~country, 
               hoverinfo = "text", type = 'scatter', mode = 'markers')
fig <- layout(fig, title = list(text = 'Doing Business Score and GDP per capita', x=0),
              xaxis = list(title = 'Log GDP per capita'),
              yaxis = list(title = 'Doing Business Score')
              )
saveWidget(partial_bundle(fig), "../plotly/wdi-doing-business.html",selfcontained = F, libdir = "lib")

##################################################################################
# Energy data and figure
##################################################################################
dat = WDI(indicator=c('GDPE' = 'EG.GDP.PUSE.KO.PP.KD',
                      'EGDP'='EG.USE.COMM.GD.PP.KD',
                      'GDPE2'='EG.GDP.PUSE.KO.PP',
                      'EGDP2'='EG.EGY.PRIM.PP.KD',
                      'L' = 'SL.TLF.TOTL.IN',
                      'GDPL'='SL.GDP.PCAP.EM.KD'
                      )
          ,country='all')
write.csv(fte,file="WDI_ENERGY.csv",row.names=FALSE, na="") # save in case

f <- dat[which(dat$iso2c %in% c("US","JP","KR","CN","NG","GB")),]
fig <- plot_ly(f, x = ~year, y = ~EGDP, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy Intensity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy (kg oil equiv) / GDP'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-energy-gdpe.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-energy-gdpe")

f <- dat[which(dat$iso2c %in% c("BD","CL","MX","VN","BR","IL")),]
fig <- plot_ly(f, x = ~year, y = ~EGDP, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy Intensity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy (kg oil equiv) / GDP'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-energy-gdpe-test.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-energy-gdpe-test")

##################################################################################
# Fertility data and figure
##################################################################################
dat = WDI(indicator=c('TFR' = 'SP.DYN.TFRT.IN'),country='all')
write.csv(fte,file="WDI_TFR.csv",row.names=FALSE, na="") # save in case

f <- dat[which(dat$iso2c %in% c("NG","MX","VN","BR")),]
fig <- plot_ly(f, x = ~year, y = ~TFR, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Fertility rates', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Total fertility rate'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-fert-test.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-fert-test")

##################################################################################
# Patent data and figures
##################################################################################
dat = WDI(indicator=c('PAT' = 'IP.PAT.RESD','NPAT' = 'IP.PAT.NRES'),country='all')
write.csv(fte,file="WDI_PATENT.csv",row.names=FALSE, na="") # save in case

dat$TPAT <- dat$PAT+dat$NPAT
f <- dat[which(dat$iso2c %in% c("US","JP","DE","CN")),]

fig <- plot_ly(f, x = ~year, y = ~PAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Resident patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number resident patents'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-patent-resident.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-patent-resident")

fig <- plot_ly(f, x = ~year, y = ~NPAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Non-resident patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number non-resident patents'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-patent-nonres.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-patent-nonres")

fig <- plot_ly(f, x = ~year, y = ~TPAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Total patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number non-resident and resident patents'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/wdi-patent-all.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "wdi-patent-all")