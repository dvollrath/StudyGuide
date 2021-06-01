# Rate of return data

#########################################################################
# Get CSV of return data
p <- read.csv("jstdatasetr4.csv", header=TRUE)

#########################################################################
# Calculate returns
#########################################################################
p <- # create lagged CPI
  p %>%
  group_by(iso) %>%
  mutate(lag.cpi = dplyr::lag(cpi, n = 1, default = NA))
p$inf <- (p$cpi - p$lag.cpi)/p$lag.cpi # inflation
p$housing_real <- (1+p$housing_tr)/(1+p$inf) - 1 # housing return
p$eq_real <- (1+p$eq_tr)/(1+p$inf) - 1 # equities
p$safe_real <- (1+p$safe_tr)/(1+p$inf) - 1 # safe assets
p$risky_real <- (1+p$risky_tr)/(1+p$inf) - 1 # risky assets
p$capital_real <- (1+p$capital_tr)/(1+p$inf) - 1 # capital in total

# Lagged values
p <- p %>% group_by(iso) %>% mutate(lag1.capital_real = dplyr::lag(capital_real, n = 1, default = NA))
p <- p %>% group_by(iso) %>% mutate(lag2.capital_real = dplyr::lag(capital_real, n = 2, default = NA))
p <- p %>% group_by(iso) %>% mutate(lag3.capital_real = dplyr::lag(capital_real, n = 3, default = NA))
p <- p %>% group_by(iso) %>% mutate(lag4.capital_real = dplyr::lag(capital_real, n = 4, default = NA))
p <- p %>% group_by(iso) %>% mutate(lag5.capital_real = dplyr::lag(capital_real, n = 5, default = NA))

# 5-year moving average
p$ma5.capital_real = round(((1+p$lag4.capital_real)*(1+p$lag3.capital_real)*(1+p$lag2.capital_real)*(1+p$lag1.capital_real)*(1+p$capital_real))^(1/5) - 1,digits=2)

# Subset of countries and time period
stable <- p[ which(p$iso %in% c("USA", "DEU", "JPN", "GBR", "AUS")),]
stable <- stable[which(p$year > 1949),]

#########################################################################
# Figure of 5-year rates of return
#########################################################################
fig <- plot_ly(stable, x = ~year, y = ~ma5.capital_real, linetype = ~country, type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Return to capital over time', x=0),
              xaxis = list(title = 'Year'),
              yaxis = list (title = '5-year annualized return',range = c(-.1,.2)),
              hovermode="x unified")
api_create(fig, filename = "jst-stable-return")
