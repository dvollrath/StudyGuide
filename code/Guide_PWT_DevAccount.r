# Do development accounting and prepare table of results

library(DT)
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
p$tfp <- p$gdppc/(p$ky*p$hc*p$lfp) # just the TFP part

p <- p[which(p$year == "2019"),] # just the 2019 data

s <- p[,c("country","rgdpna","pop","rnna","hc","emp")] # raw data
s$rgdpna <- round(s$rgdpna,digits=2)
s$pop <- round(s$pop,digits=2)
s$rnna <- round(s$rnna,digits=2)
s$hc <- round(s$hc,digits=2)
s$emp <- round(s$emp,digits=2)
names(s) <- c("Country","GDP","Pop.(N)","K","HC p.c.","Worker(L)")
s <- s[complete.cases(s), ]

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

p <- p[,c("country","acctgdppc","acctky","accthc","acctlfp","accttfp")]
p$acctgdppc <- round(p$acctgdppc,digits=3)
p$acctky <- round(p$acctky,digits=3)
p$accthc <- round(p$accthc,digits=3)
p$acctlfp <- round(p$acctlfp,digits=3)
p$accttfp <- round(p$accttfp,digits=3)
f <- p
names(p) <- c("Country","GDP p.c.","K/Y","HC","L/N","A")
p <- p[complete.cases(p), ]

#########################################################################
# Figure for level of R&D workers and level of productivity
#########################################################################



tab <- datatable(p,rownames = FALSE,  class = 'display', 
                 extensions = c('Buttons','FixedHeader'), 
                 options=list(dom = 'lfrtBp',
                              buttons = c('csv')
                              )
                 )
saveWidget(tab, "../plotly/pwt-dev-acct.html",selfcontained = F, libdir = "lib")

tab <- datatable(s,rownames = FALSE,  class = 'display', 
                 extensions =c('Buttons','FixedHeader'), 
                 options=list(dom = 'lfrtBp',
                              buttons = c('csv')
                 )
)
saveWidget(tab, "../plotly/pwt-dev-raw.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(f, x = ~acctgdppc, y = ~acctky, 
               type = 'scatter', mode = 'markers',
               hovertemplate = paste("<br>",
                                     "%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- fig %>% add_trace(y = ~acctgdppc,mode = 'lines')
fig <- fig %>% layout(showlegend = FALSE)
fig <- layout(fig, title = list(text = 'Relationship of relative K/Y to relative GDP p.c.', x=0),
              xaxis = list(title = 'Relative GDP p.c.'),
              yaxis = list(title = 'Relative K/Y'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-dev-ky.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(f, x = ~acctgdppc, y = ~accthc, 
               type = 'scatter', mode = 'markers',
               hovertemplate = paste("<br>",
                                     "%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- fig %>% add_trace(y = ~acctgdppc,mode = 'lines')
fig <- fig %>% layout(showlegend = FALSE)
fig <- layout(fig, title = list(text = 'Relationship of relative HC to relative GDP p.c.', x=0),
              xaxis = list(title = 'Relative GDP p.c.'),
              yaxis = list(title = 'Relative HC'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-dev-hc.html",selfcontained = F, libdir = "lib")

fig <- plot_ly(f, x = ~acctgdppc, y = ~accttfp, 
               type = 'scatter', mode = 'markers',
               hovertemplate = paste("<br>",
                                     "%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- fig %>% add_trace(y = ~acctgdppc,mode = 'lines')
fig <- fig %>% layout(showlegend = FALSE)
fig <- layout(fig, title = list(text = 'Relationship of relative A to relative GDP p.c.', x=0),
              xaxis = list(title = 'Relative GDP p.c.'),
              yaxis = list(title = 'Relative A'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-dev-tfp.html",selfcontained = F, libdir = "lib")