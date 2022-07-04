# Do growth accounting and prepare figures of results

#########################################################################
# Pull PWT into dataframe
data("pwt10.0") # extract PWT data

#########################################################################
# Accounting calculation
#########################################################################
p <- pwt10.0 # copy dataframe for manipulation
p$lngdppc <- round(log(p$rgdpna) - log(p$pop),digits=2) # create log GDP per capita
p$lnK <- log(p$rnna)
p$lnL <- log(p$pop)
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lnK = dplyr::lag(lnK, n = 10, default = NA))
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lnL = dplyr::lag(lnL, n = 10, default = NA))
p <- 
  p %>%
  group_by(isocode) %>%
  mutate(lag10.lngdppc = dplyr::lag(lngdppc, n = 10, default = NA))

p$gK <- (p$lnK - p$lag10.lnK)/10
p$gL <- (p$lnL - p$lag10.lnL)/10
p$gy <- (p$lngdppc - p$lag10.lngdppc)/10
p$ga <- (1/.7)*p$gy - (.3/.7)*(p$gK - p$gL)
p$gcap <- .3*(p$gK - p$ga - p$gL)

usa <- p[which(p$isocode %in% c("USA")),]
deu <- p[which(p$isocode %in% c("DEU")),]
kor <- p[which(p$isocode %in% c("KOR")),]
jpn <- p[which(p$isocode %in% c("JPN")),]
chn <- p[which(p$isocode %in% c("CHN")),]

#########################################################################
# Figure for JPN showing growth rates of capital versus productivity
#########################################################################

fig <- plot_ly(jpn, x = ~year, y = ~ga, name = 'Productivity', type = 'scatter', 
               mode = 'lines'
               )
fig <- fig %>% add_trace(y = ~gcap, name = 'Capital',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for Japan', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list (title = '10-year growth rates'),
               hovermode="x unified")
api_create(fig, filename = "pwt-account-basic-jpn")


fig <- plot_ly(usa, x = ~year, y = ~ga, name = 'Productivity', type = 'scatter', 
               mode = 'lines'
)
fig <- fig %>% add_trace(y = ~gcap, name = 'Capital',mode = 'lines')
fig <- layout(fig, title = list(text = 'Accounting for Japan', x=0),
              xaxis = list(title = 'Year', tick0=1950, dtick=10),
              yaxis = list (title = '10-year growth rates'),
              hovermode="x unified")
api_create(fig, filename = "pwt-account-basic-usa")
