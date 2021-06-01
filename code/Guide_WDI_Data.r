# Uses WDI to create a large number of figures used in Study Guide

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

f <- dat[which(dat$iso2c %in% c("US","JP","KR","CN","NG","GB")),]
fig <- plot_ly(f, x = ~year, y = ~EGDP, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy Intensity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy (kg oil equiv) / GDP'),
              hovermode="x unified")
api_create(fig, filename = "wdi-energy-gdpe")

f <- dat[which(dat$iso2c %in% c("BD","CL","MX","VN","BR","IL")),]
fig <- plot_ly(f, x = ~year, y = ~EGDP, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Energy Intensity', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Energy (kg oil equiv) / GDP'),
              hovermode="x unified")
api_create(fig, filename = "wdi-energy-gdpe-test")

##################################################################################
# Fertility data and figure
##################################################################################
dat = WDI(indicator=c('TFR' = 'SP.DYN.TFRT.IN'),country='all')
f <- dat[which(dat$iso2c %in% c("NG","MX","VN","BR")),]
fig <- plot_ly(f, x = ~year, y = ~TFR, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Fertility rates', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Total fertility rate'),
              hovermode="x unified")
api_create(fig, filename = "wdi-fert-test")

##################################################################################
# Patent data and figures
##################################################################################
dat = WDI(indicator=c('PAT' = 'IP.PAT.RESD','NPAT' = 'IP.PAT.NRES'),country='all')
dat$TPAT <- dat$PAT+dat$NPAT
f <- dat[which(dat$iso2c %in% c("US","JP","DE","CN")),]

fig <- plot_ly(f, x = ~year, y = ~PAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Resident patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number resident patents'),
              hovermode="x unified")
api_create(fig, filename = "wdi-patent-resident")

fig <- plot_ly(f, x = ~year, y = ~NPAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Non-resident patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number non-resident patents'),
              hovermode="x unified")
api_create(fig, filename = "wdi-patent-nonres")

fig <- plot_ly(f, x = ~year, y = ~TPAT, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Total patenting', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Number non-resident and resident patents'),
              hovermode="x unified")
api_create(fig, filename = "wdi-patent-all")