# Maddison and Kremer long-run evidence

#########################################################################
# Pull Maddison data into dataframe
mad <- read.csv("maddison2010.csv", header=TRUE)

mad <- mad[which(mad$year>999),] # only 1820 and later

mad$lndenmark <- round(log(mad$denmark),digits=2)
mad$lnfrance <- round(log(mad$france),digits=2)
mad$lnusa <- round(log(mad$usa),digits=2)
mad$lnenglandgbuk <- round(log(mad$englandgbuk),digits=2)
mad$lnhollandnetherlands <- round(log(mad$hollandnetherlands),digits=2)
mad$lnitaly <- round(log(mad$centrenorthitaly),digits=2)
mad$lnmexico <- round(log(mad$mexico),digits=2)
mad$lnjapan <- round(log(mad$japan),digits=2)

fig <- plot_ly(mad, x = ~year)
fig <- fig %>% add_trace(y = ~lnenglandgbuk, name = 'UK', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnmexico, name = 'Mexico', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnjapan, name = 'Japan', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita in the long run', x=0),
              xaxis = list(title = 'Year',tick0=1000, dtick=100),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/mad-longrun-ir.html",selfcontained = F, libdir = "lib")


mad <- mad[which(mad$year>1819),] # only 1820 and later

#########################################################################
# Figure for long-run GDP per capita
#########################################################################
fig <- plot_ly(mad, x = ~year)
fig <- fig %>% add_trace(y = ~lnfrance, name = 'France', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnusa, name = 'USA', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnhollandnetherlands, name = 'Holland/Netherlands', type = 'scatter', mode = 'lines+markers')
fig <- fig %>% add_trace(y = ~lnenglandgbuk, name = 'England/UK', type = 'scatter', mode = 'lines+markers')
fig <- layout(fig, title = list(text = 'Log GDP per capita in the long run', x=0),
              xaxis = list(title = 'Year', tick0=1820, dtick=20),
              yaxis = list (title = 'Log GDP per capita', range=c(6,11)),
              hovermode="x unified")
saveWidget(partial_bundle(fig), "../plotly/mad-stable-lngdppc.html",selfcontained = F, libdir = "lib")
#api_create(fig, filename = "mad-stable-lngdppc")

##########################################################################
# Pull Maddison world data in and figure for global GDP per capita and pop
#########################################################################
mad <- read.csv("maddison_world.csv", header=TRUE)

fig <- plot_ly(mad, x = ~ln_pop, y = ~ln_gdppc, text=~year,
               type = 'scatter', mode = 'markers',
               marker = list(size = 10),
               hovertemplate = paste("<b>Year: %{text}</b><br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Relationship of GDP p.c. and population', x=0),
              xaxis = list(title = 'Log global population'),
              yaxis = list(title = 'Log global GDP per capita')
              )
saveWidget(partial_bundle(fig), "../plotly/mad-global-lngdppc-pop.html",selfcontained = F, libdir = "lib")
#api_create(fig, filename = "mad-global-lngdppc-pop")

# Calculate average growth rates between Maddison observations
mad <- # lag the population
  mad %>%
  mutate(lag.ln_pop = dplyr::lag(ln_pop, n = 1, default = NA))
mad <- # lag the year
  mad %>%
  mutate(lag.year = dplyr::lag(year, n = 1, default = NA))
mad <- # lag the GDP per capita
  mad %>%
  mutate(lag.ln_gdppc = dplyr::lag(ln_gdppc, n = 1, default = NA))
mad$gy <- (mad$ln_gdppc - mad$lag.ln_gdppc)/(mad$year-mad$lag.year)
mad$gl <- (mad$ln_pop - mad$lag.ln_pop)/(mad$year-mad$lag.year)

#########################################################################
# Figure of growth rate of population and growth rate of GDP per capita
#########################################################################
fig <- plot_ly(mad, x = ~gl, y = ~gy, text=~year,
               type = 'scatter', mode = 'markers',
               marker = list(size = 10),
               hovertemplate = paste("<b>Year: %{text}</b><br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Population and GDP p.c. growth', x=0),
              xaxis = list(title = 'Global population growth'),
              yaxis = list(title = 'GDP p.c.')
)
saveWidget(partial_bundle(fig), "../plotly/mad-global-gy-gl.html",selfcontained = F, libdir = "lib")
#api_create(fig, filename = "mad-global-gy-gl")

#########################################################################
# Figure of pop growth rate and GDP per capita
#########################################################################
fig <- plot_ly(mad, x = ~gl, y = ~ln_gdppc, text=~year,
               type = 'scatter', mode = 'markers',
               marker = list(size = 10),
               hovertemplate = paste("<b>Year: %{text}</b><br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Population growth and GDP p.c.', x=0),
              xaxis = list(title = 'Global population growth'),
              yaxis = list(title = 'Global GDP p.c.')
)
saveWidget(partial_bundle(fig), "../plotly/mad-global-y-gl.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "mad-global-y-gl")


#########################################################################
# Pull in Kremer data and create figure
#########################################################################
kr <- read.csv("kremer.csv", header=TRUE)
fig <- plot_ly(kr, x = ~pop, y = ~n, text=~year,
               type = 'scatter', mode = 'markers',
               marker = list(size = 10),
               hovertemplate = paste("<b>Year: %{text}</b><br>","%{yaxis.title.text}: %{y:.2f}<br>",
                                     "%{xaxis.title.text}: %{x:.2f}<br>")
)
fig <- layout(fig, title = list(text = 'Population level and growth', x=0),
              xaxis = list(title = 'Population (millions)'),
              yaxis = list(title = 'Population growth rate')
)
saveWidget(partial_bundle(fig), "../plotly/kremer-pop-gl.html",selfcontained = F, libdir = "lib")

#api_create(fig, filename = "kremer-pop-gl")
