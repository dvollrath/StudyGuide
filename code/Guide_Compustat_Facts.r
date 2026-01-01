# Rate of cost data
# Have to grab from local folder (see "Rich" project) because files are too big
#########################################################################
# Get CSV of return data
c <- fread("~/Library/CloudStorage/Dropbox/data/compustat/compustat.csv", header=TRUE)
c[, cogs_sale_ratio := cogs/sale]
c[, sga_sale_ratio := xsga/sale]
c[, mu_naive := 0.85*sale/cogs]
c[, pi_naive := 1 - cogs_sale_ratio]
cut <- quantile(c$sga_sale_ratio, probs = c(0.01,0.99), na.rm=TRUE)

c <- c[sga_sale_ratio > cut[1] & sga_sale_ratio< cut[2]]

c <- c[, lapply(.SD, mean), .SDcols=c('cogs_sale_ratio','sga_sale_ratio','mu_naive','pi_naive'), by=.(nrind2, countrycode, year)]
c[, mu_overall := 0.85/cogs_sale_ratio]
c[, pi_overall := 1-cogs_sale_ratio]

sga = binsreg(sga_sale_ratio, year, data = c,nbins=60,polyreg=1)
cog = binsreg(cogs_sale_ratio,year,data = c,nbins=60,polyreg=1)

sgadot = sga$data.plot$`Group Full Sample`$data.dots
cogdot = cog$data.plot$`Group Full Sample`$data.dots

fig <- plot_ly(sgadot, x = ~x, y = ~fit, type = 'scatter',name = 'SGA')
fig <- fig %>% add_trace(x = ~x, y = ~fit, data = cogdot, name = 'COGS', type = 'scatter')
fig <- layout(fig, title = list(text = 'Cost structure of firms', x=0),
              xaxis = list(title = 'Year', tick0=1960, dtick=10),
              yaxis = list(title = 'Cost relative to revenues'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/computstat-costs.html",selfcontained = F, libdir = "lib")

mu1 = binsreg(mu_naive,year,data = c,nbins=60,polyreg=1)
mu2 = binsreg(mu_overall,year,data = c,nbins=60,polyreg=1)
mu1dot = mu1$data.plot$`Group Full Sample`$data.dots
mu2dot = mu2$data.plot$`Group Full Sample`$data.dots

fig <- plot_ly(mu1dot, x = ~x, y = ~fit, type = 'scatter',name = 'Raw')
fig <- fig %>% add_trace(x = ~x, y = ~fit, data = mu2dot, name = 'Weighted', type = 'scatter')
fig <- layout(fig, title = list(text = 'Markup of price over marginal cost', x=0),
              xaxis = list(title = 'Year', tick0=1960, dtick=10),
              yaxis = list(title = 'Markup (p/c)'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/computstat-markups.html",selfcontained = F, libdir = "lib")


pi2 = binsreg(pi_overall,year,data = c,nbins=60,polyreg=1)
pi2dot = pi2$data.plot$`Group Full Sample`$data.dots

fig <- plot_ly(pi2dot, x = ~x, y = ~fit, type = 'scatter',name = 'Weighted')
fig <- layout(fig, title = list(text = 'Gross profit margin', x=0),
              xaxis = list(title = 'Year', tick0=1960, dtick=10),
              yaxis = list(title = 'Gross margin'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/computstat-profits.html",selfcontained = F, libdir = "lib")
