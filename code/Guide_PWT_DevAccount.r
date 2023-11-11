# Do development accounting and prepare table of results


#########################################################################
# Pull PWT into dataframe
data("pwt10.01") # extract PWT data

#########################################################################
# Accounting calculation
#########################################################################
p <- pwt10.01 # copy dataframe for manipulation
p$gdppc <- p$rgdpna/p$pop # GDP per capita
p$ky <- (p$rnna/p$rgdpna)**(.3/(1-.3)) #K/Y ratio
p$lfp <- p$emp/p$pop # just the LFP ratio
# HC is already pre-calculated
p$tfp <- p$gdppc/(p$ky*p$hc) # just the TFP part

p <- p[which(p$year == "2019"),] # just the 2019 data

usgdppc <- with(p,gdppc[isocode=="USA"])
usky <- with(p,ky[isocode=="USA"])
ushc <- with(p,hc[isocode=="USA"])
uslfp <- with(p,lfp[isocode=="USA"])
ustfp <- with(p,tfp[isocode=="USA"])

p$acctgdppc <- p$gdppc/usgdppc
p$acctky <- p$ky/usky
p$accthc <- p$hc/ushc
p$acctlfp <- p$lfp/uslfp
p$accttfp <- p$tfp/ustfp

s <- p[which(p$isocode %in% c("USA","FRA","CHL","POL","AUS","THA")),]
s <- s[,c("country","acctgdppc","acctky","accthc","acctlfp","accttfp")]
s$acctgdppc <- round(s$acctgdppc,digits=3)
s$acctky <- round(s$acctky,digits=3)
s$accthc <- round(s$accthc,digits=3)
s$acctlfp <- round(s$acctlfp,digits=3)
s$accttfp <- round(s$accttfp,digits=3)
names(s) <- c("Country","GDP p.c.","K/Y","HC","L/N","A")
#########################################################################
# Figure for level of R&D workers and level of productivity
#########################################################################
fig <- plot_ly(
  type = 'table',
  columnwidth = c(40,20,20,20,20,20),
  header = list(
    values = c(names(s)),
    align = c('left', rep('center', ncol(s))),
    line = list(width = 1, color = 'black'),
    fill = list(color = 'lightblue'),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(
      t(as.matrix(unname(s)))
    ),
    align = c('left', rep('center', ncol(s))),
    line = list(color = "black", width = 1),
    fill = list(color = c('lightgray', 'white')),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))


saveWidget(fig, "../plotly/pwt-dev-acct.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-oecd-level-rd")