# Uses OECD to create a large number of figures used in Study Guide
# OECD data is always fucked up, so of course the package doesn't work


##################################################################################
# R&D worker data
##################################################################################
work <- get_dataset("PERS_FUNC")

fte <- work
fte <- fte[which(fte$SECTPERF %in% c("_T")),] # all sectors
fte <- fte[which(fte$FUNCTION %in% c("RSE")),] # researchers
fte <- fte[which(fte$GENDER %in% c("_T")),] # both genders
fte <- fte[which(fte$MEASURE %in% c("FTE")),] # FTE measured
fte <- fte[which(fte$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]

fte$lnrdworker <- log(fte$obsValue) # log value

##################################################################################
# Figures for R&D workers and Log R&D workers
##################################################################################
fig <- plot_ly(fte, x = ~obsTime, y = ~obsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'FTE R&D Workers'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-fte.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-fte")

fig <- plot_ly(fte, x = ~obsTime, y = ~lnrdworker, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log FTE R&D Workers'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-lnfte.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-lnfte")

##################################################################################
# Japan only - for case study
##################################################################################
jpn <- fte[which(fte$COUNTRY %in% c("JPN")),]
fig <- plot_ly(jpn, x = ~obsTime, y = ~lnrdworker, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Japanese R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log FTE R&D Workers'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-lnfte-jpn.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-lnfte-jpn")

##################################################################################
# Get OECD data on R&D expenditures
##################################################################################
work <- get_dataset("GERD_TOE")

gerd <- work
gerd <- gerd[which(gerd$SECTPERF %in% c("_T")),]
gerd <- gerd[which(gerd$TYPE_COST %in% c("_T")),]
gerd <- gerd[which(gerd$MEASURE %in% c("DF6")),]
gerd <- gerd[which(gerd$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]
gerd$lnrd <- round(log(gerd$obsValue),digits=2)

##################################################################################
# Figures for R&D expenditures
##################################################################################
fig <- plot_ly(gerd, x = ~obsTime, y = ~lnrd, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Log real R&D expenditures', type='log'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-logrd.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-logrd")

fig <- plot_ly(gerd, x = ~obsTime, y = ~obsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real R&D expenditures'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-levelrd.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-levelrd")
