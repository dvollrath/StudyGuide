# Uses OECD to create figure on structural change and price changes

##################################################################################
# Affordability
##################################################################################
all <- fread("~/Dropbox/project/studyguide/data/oecd_consumption_data.csv", header=TRUE)
all[, ShareVA := valueN/totalN]
setorder(all, countrycode, oecd_exp_code, year)
all[, lnVA := log(totalN)]
all[, lnP := log(valueP)]
all[, dlnVA := lnVA - shift(lnVA,1), by=.(countrycode,oecd_exp_code)]
all[, dlnP := lnP - shift(lnP,1), by=.(countrycode,oecd_exp_code)]
all[, dlnAfford := dlnVA - dlnP]

all <- select(all,LOCATION,Country,TIME,Value)
colnames(all) <- c("isocode","Country","Year","CPIAll")

f <- d[which(d$isocode %in% c("USA","GBR","JPN","KOR","CHL")),]

fig <- plot_ly(f, x = ~Year, y = ~relenergy, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Relative price of energy', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = 'Real energy price (2019=1)'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-afford-growth.html",selfcontained = F, libdir = "lib")
