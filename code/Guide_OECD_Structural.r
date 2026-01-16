# Uses OECD to create figure on structural change and price changes

##################################################################################
# Affordability
##################################################################################
all <- fread("~/Dropbox/project/studyguide/data/oecd_consumption_data.csv", header=TRUE)
all[, ShareVA := round(valueN/totalN,3)]
setorder(all, countrycode, oecd_exp_code, year)
all[, lnVA := log(totalN)]
all[, lnP := log(valueP)]
all[, dlnVA := lnVA - shift(lnVA,1), by=.(countrycode,oecd_exp_code)]
all[, dlnP := lnP - shift(lnP,1), by=.(countrycode,oecd_exp_code)]
all[, gAfford := round(dlnVA - dlnP,3)]

all[, .N, by = oecd_exp_code]

all <-all[which(all$oecd_exp_level=="0")]

f <- all[which(all$countrycode %in% c("USA")),]
fwrite(f, "~/Dropbox/project/studyguide/data/usa_consumption_data.csv")

#f <- f[which(f$oecd_exp_code %in% c("CP01","CP03","CP06","CP10")),]

b = binsreg(gAfford,year,data = f,nbins=40,polyreg=1)
bb = b$data.plot$`Group Full Sample`$data.dots
bb$year = round(bb$x,0)
bl = b$data.plot$`Group Full Sample`$data.poly
bl$year = round(bl$x,0)
fig <- plot_ly(bb, x = ~year, y = ~fit, type = 'scatter',name = 'Products')
fig <- fig %>% add_trace(x = ~year, y = ~fit, data = bl, name = 'Trend', mode = 'line',
                        line = list(color = 'green'))
fig <- layout(fig, title = list(text = 'Raw affordability growth', x=0),
              xaxis = list(title = 'Year', tick0=1970, dtick=10),
              yaxis = list(title = 'Affordability growth rate'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-afford-growth.html",selfcontained = F, libdir = "lib")

b = binsreg(gAfford,ShareVA,data = f,nbins=40,polyreg=1)
bb = b$data.plot$`Group Full Sample`$data.dots
bl = b$data.plot$`Group Full Sample`$data.poly
fig <- plot_ly(bb, x = ~x, y = ~fit, type = 'scatter',name = 'Products')
fig <- fig %>% add_trace(x = ~x, y = ~fit, data = bl, name = 'Trend', mode = 'line',
                         line = list(color = 'green'))
fig <- layout(fig, title = list(text = 'Expenditure shares and affordability', x=0),
              xaxis = list(title = 'Expenditure share'),
              yaxis = list(title = 'Affordability growth rate'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/oecd-afford-share.html",selfcontained = F, libdir = "lib")

s <- f[,c("countrycode","year","oecd_exp_text","oecd_exp_code","ShareVA","gAfford")] # raw data
tab <- datatable(s,rownames = FALSE,  class = 'display', 
                 extensions = c('Buttons','FixedHeader'), 
                 options=list(dom = 'lfrtBp',
                              buttons = c('csv')
                 )
)
saveWidget(tab, "../plotly/oecd-afford-data.html",selfcontained = F, libdir = "lib")