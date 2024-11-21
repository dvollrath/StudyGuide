# Uses OECD to create a large number of figures used in Study Guide


##################################################################################
# R&D worker data
##################################################################################
#filter_list <- list(c("USA","JPN","KOR","CHN","DEU","GBR")) # limit countries to download
#fte <- get_dataset("PERS_FUNC", filter = filter_list)

#fte <- work
#fte <- fte[which(fte$SECTPERF %in% c("_T")),] # all sectors
#fte <- fte[which(fte$FUNCTION %in% c("RSE")),] # researchers
#fte <- fte[which(fte$GENDER %in% c("_T")),] # both genders
#fte <- fte[which(fte$MEASURE %in% c("FTE")),] # FTE measured

#write.csv(fte,file="OECD_PERS_FUNC.csv",row.names=FALSE, na="") # save in case

fte <- read.csv("OECD_PERS_FUNC.csv", header=TRUE)

fte$lnrdworker <- log(as.numeric(fte$ObsValue)) # log value

##################################################################################
# Figures for R&D workers and Log R&D workers
##################################################################################
fig <- plot_ly(fte, x = ~Time, y = ~ObsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'FTE R&D Workers'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-fte.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-fte")

fig <- plot_ly(fte, x = ~Time, y = ~lnrdworker, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
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
fig <- plot_ly(jpn, x = ~Time, y = ~lnrdworker, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Japanese R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log FTE R&D Workers'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-lnfte-jpn.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-lnfte-jpn")

##################################################################################
# Get OECD data on R&D expenditures
##################################################################################
#filter_list <- list(c("USA","JPN","KOR","CHN","DEU","GBR")) # limit countries to download
#gerd <- get_dataset("GERD_TOE", filter = filter_list)

#gerd <- gerd[which(gerd$SECTPERF %in% c("_T")),]
#gerd <- gerd[which(gerd$TYPE_COST %in% c("_T")),]
#gerd <- gerd[which(gerd$MEASURE %in% c("DF6")),]

#write.csv(fte,file="OECD_GERD_TOE.csv",row.names=FALSE, na="") # save in case

gerd <- read.csv("OECD_GERD_TOE.csv", header=TRUE)
gerd <- gerd[which(gerd$REF_AREA %in% c("USA","CHN","KOR","JPN","DEU","GBR")),]
gerd <- gerd[which(gerd$PRICE_BASE %in% c("Q")),]
gerd$lnrd <- round(log(as.numeric(gerd$OBS_VALUE)),digits=2)
gerd <- gerd[order(gerd$REF_AREA,gerd$TIME_PERIOD),]

##################################################################################
# Figures for R&D expenditures
##################################################################################
fig <- plot_ly(gerd, x = ~TIME_PERIOD, y = ~lnrd, linetype = ~REF_AREA, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Log real R&D expenditures', type='log'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-logrd.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-logrd")

fig <- plot_ly(gerd, x = ~TIME_PERIOD, y = ~OBS_VALUE, linetype = ~REF_AREA, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real R&D expenditures'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-rd-levelrd.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "oecd-rd-levelrd")
