#############################################################################
# Chapter 3 cross-sectional figures
#############################################################################
data("pwt10.0") # extract PWT data
p <- pwt10.0 # save into dataframe

# Create variables of interest
p$rgdpo_pop <- p$rgdpo/p$pop # GDP per worker

p <- p %>% group_by(isocode) %>% mutate(mean_csh_i = mean(csh_i,na.rm = TRUE)) # avg cap formation share
p <- p[p$mean_csh_i>0 & p$mean_csh_i<.5,] # eliminate outliers

p <- p %>% group_by(isocode) %>% # 30-year population growth rate
        mutate(gpop = (log(pop) - log(lag(pop, n = 30)))/30)
p <- p[p$gpop<.04,] # eliminate outliers

p <- p[p$rgdpo_pop<100000 & p$rgdpo_pop>500,] # eliminate outliers

p <- p[p$year==2019,] # narrow to only 2019 for graphing and uploading

p <- p %>% drop_na(year) # slims down the dataset for posting

## Plot GDP per capita against capital formation share
f <- ggplot(p, aes(x = mean_csh_i, y = rgdpo_pop, label = isocode)) +
    geom_text(size=3) +
    labs(x = "Avg. capital formation share of GDP, 1989-2019", y = "GDP per capita, 2019") + 
    scale_y_continuous(breaks=c(0,1000,2000,4000,8000,16000,32000,64000),trans = scales::log_trans()) +
    scale_x_continuous(breaks=c(0,0.05,0.1,0.15,0.2,0.25,0.3,.35,.4,.45,.5),limits=c(0,0.5)) + 
    theme_bw()
ggsave("Ch3_xsection_csh_i.eps",path=drafts) # save static version for book
up <- ggplotly(f) # convert to plotly
api_create(up, filename = "Ch3-xsection-cshi") # upload to plotly

## Plot GDP per capita against population growth rate
f <- ggplot(p, aes(x = gpop, y = rgdpo_pop, label = isocode)) +
  geom_text(size=3) +
  labs(x = "Avg. growth rate of population, 1989-2019", y = "GDP per capita, 2019") + 
  scale_y_continuous(label=comma,breaks=c(0,1000,2000,4000,8000,16000,32000,64000),trans = scales::log_trans()) +
  scale_x_continuous(breaks=c(-0.01,0,0.01,0.02,0.03,0.04),limits=c(-0.01,0.04)) + 
  theme_bw()
ggsave("Ch3_xsection_gpop.eps",path=drafts) # save static version for book
up <- ggplotly(f) # convert to plotly
api_create(up, filename = "Ch3-xsection-gpop") # upload to plotly