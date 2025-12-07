# Do growth accounting and prepare figures of results

# Needs OECD fix for merge


#########################################################################
# Pull PWT into dataframe
#data("pwt10.01") # extract PWT data
p <- read.csv("~/Dropbox/project/studyguide/data/pwt110.csv", header=TRUE)
#########################################################################
# Accounting calculation
#########################################################################
#p <- pwt10.01 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$ky <- round(p$rnna/p$rgdpna,digits=2) # create K/Y ratio
p$acctky <- (.3/(1-.3))*log(p$ky) # just the K/Y part
p$accthc <- log(p$hc) + log(p$emp/p$pop) # just the labor/HC part
p$accttfp <- p$lngdppc - p$acctky - p$accthc # just the TFP part

s <- p # save initial dataset for use later

# Get initial values of TFP, HC, and KY terms from 1960
p <- p[which(p$year>1959),]
p$inittfp <- with(p, accttfp[year == "1960"][match(countrycode, countrycode[year == "1960"])])
p$inithc <- with(p, accthc[year == "1960"][match(countrycode, countrycode[year == "1960"])])
p$initky <- with(p, acctky[year == "1960"][match(countrycode, countrycode[year == "1960"])])

# Calcualte the counterfactual series of GDP p.c. with KY only, TFP only, HC only
p$kyonly <- round(p$inittfp + p$inithc + p$acctky,digits=2)
p$hconly <- round(p$inittfp + p$accthc + p$initky,digits=2)
p$tfponly <- round(p$accttfp + p$inithc + p$initky,digits=2)
p$input <- round(p$inittfp + p$accthc + p$acctky,digits=2)

# Grab data for only specific countries
usa <- p[which(p$countrycode %in% c("USA")),]
deu <- p[which(p$countrycode %in% c("DEU")),]
kor <- p[which(p$countrycode %in% c("KOR")),]
jpn <- p[which(p$countrycode %in% c("JPN")),]
chn <- p[which(p$countrycode %in% c("CHN")),]

#########################################################################
# Figure for USA and KOR accounting showing CF log GDP per capita
#########################################################################
#,color = I('black'),
#color_discrete_sequence= px.colors.sequential.Plasma_r

fig <- plot_ly(usa, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', 
               mode = 'lines'
               )
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for United States', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list (title = 'Log GDP per capita',range=c(9,11)),
               hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-account-usa.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-account-usa")

fig <- plot_ly(kor, x = ~year, y = ~kyonly, name = 'K/Y only', type = 'scatter', mode = 'lines')
fig <- fig %>% add_trace(y = ~hconly, name = 'HC only',mode = 'lines')
fig <- fig %>% add_trace(y = ~tfponly, name = 'Prod only',mode = 'lines')
fig <- fig %>% add_trace(y = ~lngdppc, name = 'Actual GDP p.c.',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for South Korea', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = 'Log GDP per capita'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-account-kor.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-account-kor")

#########################################################################
# Create alternative figure with breakdown of growth rate by 10-year period
#########################################################################

# Get 10-year lags for accounting terms
s <- 
  s %>%
  group_by(countrycode) %>%
  mutate(lag10.acctky = dplyr::lag(acctky, n = 10, default = NA))
s <- 
  s %>%
  group_by(countrycode) %>%
  mutate(lag10.accthc = dplyr::lag(accthc, n = 10, default = NA))
s <- 
  s %>%
  group_by(countrycode) %>%
  mutate(lag10.accttfp = dplyr::lag(accttfp, n = 10, default = NA))
s <- 
  s %>%
  group_by(countrycode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))

# Calculate 10-year growth rate of accounting terms
s$g10.acctky <- round((s$acctky - s$lag10.acctky)/10,digits=4)
s$g10.accthc <- round((s$accthc - s$lag10.accthc)/10,digits=4)
s$g10.accttfp <- round((s$accttfp - s$lag10.accttfp)/10,digits=4)
s$g10.lngdppc <- round((s$lngdppc - s$lag10.lngdppc)/10,digits=4)

comp <- s[which(s$countrycode %in% c("USA","CHN","KOR","JPN","DEU","GBR")),]
s <- s[which(s$countrycode %in% c("USA")),]

#########################################################################
# Figure for US growth rate breakdown
#########################################################################
fig <- plot_ly(s, x = ~year, y = ~g10.acctky, type = 'bar', name = 'K/Y growth')
fig <- fig %>% add_trace(y = ~g10.accthc, name = 'HC growth')
fig <- fig %>% add_trace(y = ~g10.accttfp, name = 'Prod growth')
fig <- fig %>% layout(yaxis = list(title = '10-year growth contribution'), 
                      barmode = 'stack',
                      xaxis = list(title = 'Year', tick0=1960, dtick=10),
                      title = list(text = 'Growth accounting', x=0),
                      hovermode="x unified"
                      )
saveWidget(partial_bundle(fig), "../plotly/pwt-growth-acct-usa.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-growth-acct-usa")

#########################################################################
# Figure of growth rate of productivity for set of countries
#########################################################################
fig <- plot_ly(comp, x = ~year, y = ~g10.accttfp, linetype = ~countrycode, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Productivity growth', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list(title = '10-year productivity growth rate'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-growth-tfp-comp.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-growth-tfp-comp")

#########################################################################
# Merge OECD R&D data with productivity growth data
#########################################################################

fte <- read.csv(file="OECD_PERS_FUNC.csv", header=TRUE)
fte$lnrdworker <- log(as.numeric(fte$ObsValue)) # log value

# Calculate 10-year growth rate of R&D workers
fte <- 
  fte %>%
  group_by(COUNTRY) %>%
  mutate(lag10.lnrdworker = dplyr::lag(lnrdworker, n = 10, default = NA))
fte$g10.lnrdworker <- (fte$lnrdworker - fte$lag10.lnrdworker)/10

# Join the R&D worker data to the productivity growth data for set of countries
match <- data.frame(comp$countrycode,comp$g10.accttfp,comp$year,comp$pop,comp$accttfp)
colnames(match) <- c("COUNTRY","g10.accttfp","Time","pop","accttfp")
match$lnpop <- log(match$pop)
joined <- merge(match,fte,by=c('COUNTRY','Time'))

#########################################################################
# Figure for R&D workers and growth in productivity
#########################################################################
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
saveWidget(partial_bundle(fig), "../plotly/pwt-oecd-rd-tfp.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-oecd-rd-tfp")

#########################################################################
# Figure for growth in R&D workers and growth in productivity
#########################################################################
fig <- plot_ly(joined, x = ~g10.lnrdworker, y = ~g10.accttfp, color = ~COUNTRY, 
               type = 'scatter', mode = 'markers',colors = pal,
               hovertemplate = paste("<br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of R&D growth and prod growth', x=0),
              xaxis = list(title = '10-year growth rate of R&D FTE'),
              yaxis = list(title = '10-year productivity growth rate'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-oecd-rd-gtfp.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-oecd-rd-gtfp")

#########################################################################
# Figure for level of R&D workers and level of productivity
#########################################################################
fig <- plot_ly(joined, x = ~lnrdworker, y = ~accttfp, color = ~COUNTRY, 
               type = 'scatter', mode = 'markers',colors = pal,
               hovertemplate = paste("<br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of R&D level and prod level', x=0),
              xaxis = list(title = 'Log R&D FTE'),
              yaxis = list(title = 'Log productivity'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pwt-oecd-level-rd.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "pwt-oecd-level-rd")