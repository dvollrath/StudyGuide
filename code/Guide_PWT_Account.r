# Pull PWT into dataframe
data("pwt9.1")

p <- pwt9.1 # copy dataframe for manipulation

p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$acctky <- (.3/(1-.3))*log(p$ky)
p$accthc <- log(p$hc) + log(p$emp/p$emp)
p$accttfp <- p$lngdppc - p$acctky - p$accthc

s <- p

p <- p[which(p$year>1959),]
p$inittfp <- with(p, accttfp[year == "1960"][match(isocode, isocode[year == "1960"])])
p$inithc <- with(p, accthc[year == "1960"][match(isocode, isocode[year == "1960"])])
p$initky <- with(p, acctky[year == "1960"][match(isocode, isocode[year == "1960"])])

p$kyonly <- round(p$inittfp + p$inithc + p$acctky,digits=2)
p$hconly <- round(p$inittfp + p$accthc + p$initky,digits=2)
p$tfponly <- round(p$accttfp + p$inithc + p$initky,digits=2)
p$input <- round(p$inittfp + p$accthc + p$acctky,digits=2)

usa <- p[which(p$isocode %in% c("USA")),]
deu <- p[which(p$isocode %in% c("DEU")),]
kor <- p[which(p$isocode %in% c("KOR")),]
jpn <- p[which(p$isocode %in% c("JPN")),]
chn <- p[which(p$isocode %in% c("CHN")),]


fig <- plot_ly(usa, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', mode = 'lines')
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for United States', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list (title = 'Log GDP per capita',range=c(9,11)),
               hovermode="x unified")
api_create(fig, filename = "pwt-account-usa")

fig <- plot_ly(kor, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', mode = 'lines')
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita'),
              hovermode="x unified")
api_create(fig, filename = "pwt-account-kor")


s <- 
  s %>%
  group_by(isocode) %>%
  mutate(lag10.acctky = dplyr::lag(acctky, n = 10, default = NA))
s <- 
  s %>%
  group_by(isocode) %>%
  mutate(lag10.accthc = dplyr::lag(accthc, n = 10, default = NA))
s <- 
  s %>%
  group_by(isocode) %>%
  mutate(lag10.accttfp = dplyr::lag(accttfp, n = 10, default = NA))
s <- 
  s %>%
  group_by(isocode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))

s$g10.acctky <- round((s$acctky - s$lag10.acctky)/10,digits=4)
s$g10.accthc <- round((s$accthc - s$lag10.accthc)/10,digits=4)
s$g10.accttfp <- round((s$accttfp - s$lag10.accttfp)/10,digits=4)
s$g10.lngdppc <- round((s$lngdppc - s$lag10.lngdppc)/10,digits=4)

comp <- s[which(s$isocode %in% c("USA","CHN","KOR","JPN","DEU","GBR")),]
s <- s[which(s$isocode %in% c("USA")),]


fig <- plot_ly(s, x = ~year, y = ~g10.acctky, type = 'bar', name = 'K/Y growth')
fig <- fig %>% add_trace(y = ~g10.accthc, name = 'HC growth')
fig <- fig %>% add_trace(y = ~g10.accttfp, name = 'Prod growth')
fig <- fig %>% layout(yaxis = list(title = '10-year growth contribution'), 
                      barmode = 'stack',
                      xaxis = list(title = 'Year', tick0=1960, dtick=10),
                      title = list(text = 'Growth accounting', x=0),
                      hovermode="x unified"
                      )
api_create(fig, filename = "pwt-growth-acct-usa")

fig <- plot_ly(comp, x = ~year, y = ~g10.accttfp, linetype = ~isocode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Productivity growth', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = '10-year productivity growth rate'),
              hovermode="x unified")
api_create(fig, filename = "pwt-growth-tfp-comp")

# Pull OECD into dataframe
work <- get_dataset("PERS_FUNC")

fte <- work
fte <- fte[which(fte$SECTPERF %in% c("_T")),]
fte <- fte[which(fte$FUNCTION %in% c("RSE")),]
fte <- fte[which(fte$GENDER %in% c("_T")),]
fte <- fte[which(fte$MEASURE %in% c("FTE")),]
fte <- fte[which(fte$COUNTRY %in% c("USA","JPN","KOR","CHN","DEU","GBR")),]
fte$lnrdworker <- log(fte$obsValue)

fte <- 
  fte %>%
  group_by(COUNTRY) %>%
  mutate(lag10.lnrdworker = dplyr::lag(lnrdworker, n = 10, default = NA))
fte$g10.lnrdworker <- (fte$lnrdworker - fte$lag10.lnrdworker)/10

match <- data.frame(comp$isocode,comp$g10.accttfp,comp$year,comp$pop,comp$accttfp)
colnames(match) <- c("COUNTRY","g10.accttfp","obsTime","pop","accttfp")
match$lnpop <- log(match$pop)

joined <- merge(match,fte,by=c('COUNTRY','obsTime'))

pal <- c('#e41a1c','#377eb8','#4daf4a','#984ea3','#ff7f00','#ffff33')
pal <- setNames(pal, c("USA","JPN","KOR","CHN","DEU","GBR"))
fig <- plot_ly(joined, x = ~lnrdworker, y = ~g10.accttfp, color = ~COUNTRY, 
               type = 'scatter', mode = 'markers',colors = pal,
               hovertemplate = paste("<br>",
                                     "%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of R&D work and prod growth', x=0),
              xaxis = list(title = 'Log R&D FTE workers'),
              yaxis = list(title = '10-year productivity growth rate'),
              hovermode="x unified")
api_create(fig, filename = "pwt-oecd-rd-tfp")

fig <- plot_ly(joined, x = ~g10.lnrdworker, y = ~g10.accttfp, color = ~COUNTRY, 
               type = 'scatter', mode = 'markers',colors = pal,
               hovertemplate = paste("<br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of R&D growth and prod growth', x=0),
              xaxis = list(title = '10-year growth rate of R&D FTE'),
              yaxis = list(title = '10-year productivity growth rate'),
              hovermode="x unified")
api_create(fig, filename = "pwt-oecd-rd-gtfp")

fig <- plot_ly(joined, x = ~lnrdworker, y = ~accttfp, color = ~COUNTRY, 
               type = 'scatter', mode = 'markers',colors = pal,
               hovertemplate = paste("<br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of R&D level and prod level', x=0),
              xaxis = list(title = 'Log R&D FTE'),
              yaxis = list(title = 'Log productivity'),
              hovermode="x unified")
api_create(fig, filename = "pwt-oecd-level-rd")