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

p <- p[,c("country","acctgdppc","acctky","accthc","acctlfp","accttfp")]
p$acctgdppc <- round(p$acctgdppc,digits=3)
p$acctky <- round(p$acctky,digits=3)
p$accthc <- round(p$accthc,digits=3)
p$acctlfp <- round(p$acctlfp,digits=3)
p$accttfp <- round(p$accttfp,digits=3)
names(p) <- c("Country","GDP p.c.","K/Y","HC","L/N","A")

p <- p[complete.cases(p), ]

s <- p[which(p$isocode %in% c("USA","FRA","CHL","POL","AUS","THA")),]

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

datatable(p,rownames = FALSE,  class = 'cell-border stripe', options=list(buttons = c('excel')))

dev_search <- DT::datatable((p),
                               rownames = FALSE, 
                               extensions = 'Buttons', 
                               options = list(autoWidth = TRUE, 
                                              extensions = 'FixedColumns', 
                                              options = list(dom = 't', 
                                                             scrollX = TRUE, 
                                                             fixedColumns = TRUE),
                                              columnDefs = list(list(width= '200px',
                                                                     targets = "feedback")), 
                                              dom=('Bfrtip'), 
                                              buttons = c('excel'),
                                              #pageLength = table_rows,
                                              searchHighlight = TRUE),
                               filter=list(position="top"))

