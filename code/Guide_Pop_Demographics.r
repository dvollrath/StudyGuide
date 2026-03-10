# Do basic pop figures from Fully Grown

#########################################################################
# Accounting calculation
#########################################################################
p <- read.csv("~/Dropbox/project/studyguide/data/mitchell.csv", header=TRUE)

fig <- plot_ly(p, x = ~year, y = ~cbr, name = 'Crude birth rate', type = 'scatter', 
               mode = 'lines'
               )
fig <- fig %>% add_trace(y = ~tfr, name = 'Total fertility rate',mode = 'lines',yaxis="y2")
fig <- layout(fig, title = list(text = 'Demographic trends', x=0),
               xaxis = list(title = 'Year', tick0=1950, dtick=10),
               yaxis = list(title = 'Crude birth rate (per 1,000)'),
               yaxis2 = list(title = 'Total fertility rate', side='right', overlaying = 'y'),
               hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pop-birth-rates-usa.html",selfcontained = F, libdir = "lib")

p <- read.csv("~/Dropbox/project/studyguide/data/oecd-pop.csv", header=TRUE)

p <- p[which(p$time %in% c("1960","1990","2020")),]
p <- p[which(p$sex %in% c("TT")),]
p <- p[grepl("L5", p$age), ]
p <- p[p$age != "D199L5TT", ]
p$str_age <- substr(p$age, 7, 8)
p$str_age[p$str_age == "M8"] <- "85"
p$str_age <- as.numeric(p$str_age)
p$value <- round(p$value / 1000, 1)
p$time <- as.factor(p$time)

fig <- plot_ly(p, x = ~str_age, y = ~value, color=~time, type = 'scatter',mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Age structure', x=0),
              xaxis = list(title = 'Age bins (by minimum)'),
              yaxis = list(title = 'Millions of people'),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/pop-age-levels-usa.html",selfcontained = F, libdir = "lib")
