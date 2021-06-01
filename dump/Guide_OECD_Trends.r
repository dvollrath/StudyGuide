# Pull OECD into dataframe

work <- get_dataset("PERS_FUNC")

fte <- work
fte <- fte[which(fte$SECTPERF %in% c("_T")),]
fte <- fte[which(fte$FUNCTION %in% c("RSE")),]
fte <- fte[which(fte$GENDER %in% c("_T")),]
fte <- fte[which(fte$MEASURE %in% c("FTE")),]
fte <- fte[which(fte$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]

fte$lnrdworker <- log(fte$obsValue)

fig <- plot_ly(fte, x = ~obsTime, y = ~obsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'FTE R&D Workers'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-fte")

fig <- plot_ly(fte, x = ~obsTime, y = ~lnrdworker, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log FTE R&D Workers'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-lnfte")

jpn <- fte[which(fte$COUNTRY %in% c("JPN")),]
fig <- plot_ly(jpn, x = ~obsTime, y = ~lnrdworker, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Japanese R&D Workers over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = 'Log FTE R&D Workers'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-lnfte-jpn")


work <- get_dataset("GERD_TOE")

gerd <- work
gerd <- gerd[which(gerd$SECTPERF %in% c("_T")),]
gerd <- gerd[which(gerd$TYPE_COST %in% c("_T")),]
gerd <- gerd[which(gerd$MEASURE %in% c("DF6")),]
gerd <- gerd[which(gerd$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]
gerd$lnrd <- round(log(gerd$obsValue),digits=2)

fig <- plot_ly(gerd, x = ~obsTime, y = ~lnrd, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Log real R&D expenditures', type='log'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-logrd")

fig <- plot_ly(gerd, x = ~obsTime, y = ~obsValue, linetype = ~COUNTRY, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'R&D expenditure over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real R&D expenditures'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-levelrd")

# too large to download directly
p <- read.csv("~/Dropbox/project/studyguide/data/pats_ipc_subset.csv", header=TRUE)


pat <- p
pat <- pat[which(pat$KINDCOUNTRY %in% c("APPLICANTS")),]
pat <- pat[which(pat$KINDPATENT %in% c("USPTO_G")),]
pat <- pat[which(pat$KINDDATE %in% c("GRANT")),]
pat <- pat[which(pat$IPC %in% c("TOTAL")),]
pat <- pat[which(pat$LOCATION %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]

#write.csv(pat,file="~/Dropbox/project/studyguide/data/pats_ipc_subset.csv",row.names=FALSE, na="")

fig <- plot_ly(pat, x = ~Time, y = ~Value, linetype = ~LOCATION, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Patent activity over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'USPTO patent grants'),
              hovermode="x unified")
api_create(fig, filename = "oecd-rd-patent")