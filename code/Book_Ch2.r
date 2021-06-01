setwd("~/Dropbox/project/studyguide/data")
source("~/Dropbox/Tools/.Rprofile")
library(pwt10)
library(ggplot2)
library(dplyr)
library(scales)
library(tidyr)

data("pwt10.0") # extract PWT data
rm(p)
p <- pwt10.0 # save into dataframe

## Create cross-sectional plots
# Create variables of interest
p$rgdpo_pop <- p$rgdpo/p$pop # GDP per worker
p <- p[p$year>1988,] # limit to 1989 and after

p <- p %>% group_by(isocode) %>% mutate(mean_csh_i = mean(csh_i)) # avg cap formation share
p <- p[p$mean_csh_i>0 & p$mean_csh_i<.4,] # eliminate outliers on cap formation share

p <- p %>% group_by(isocode) %>% mutate(gpop = (log(pop) - log(lag(pop, n = 30, default = NA)))/30)
p <- p[p$gpop<.04,] # eliminate outliers

p <- p[p$year==2019,] # narrow to only 2019
p <- p[p$rgdpo_pop<100000 & p$rgdpo_pop>500,] # eliminate outliers

## Plot GDP per capita against capital formation share
f <- ggplot(p, aes(x = mean_csh_i, y = rgdpo_pop, label = isocode)) +
    geom_text(size=3) +
    labs(x = "Avg. capital formation share of GDP, 1989-2019", y = "GDP per capita, 2019") + 
    scale_y_continuous(label=comma,breaks=c(0,1000,2000,4000,8000,16000,32000,64000),trans = scales::log_trans()) +
    scale_x_continuous(breaks=c(0.05,0.1,0.15,0.2,0.25,0.3),limits=c(0.05,0.3)) + 
    geom_smooth(method='lm', se=FALSE, color="black") + 
    theme_bw()

## Plot GDP per capita against population growth rate
f <- ggplot(p, aes(x = gpop, y = rgdpo_pop, label = isocode)) +
  geom_text(size=3) +
  labs(x = "Avg. growth rate of population, 1989-2019", y = "GDP per capita, 2019") + 
  scale_y_continuous(label=comma,breaks=c(0,1000,2000,4000,8000,16000,32000,64000),trans = scales::log_trans()) +
  scale_x_continuous(breaks=c(-0.01,0,0.01,0.02,0.03,0.04),limits=c(-0.01,0.04)) + 
  geom_smooth(method='lm', se=FALSE, color="black") + 
  theme_bw()

## Create time-series plots
p <- pwt10.0 # save into dataframe
p$rgdpo_pop <- p$rgdpo/p$pop # GDP per worker
p$ln_rgdpo_pop <- log(p$rgdpo_pop)
p <- p %>% group_by(isocode) %>% mutate(lag1.pop = dplyr::lag(pop, n = 1, default = NA))
p$gpop <- (log(p$pop) - log(p$lag1.pop))/1 # population growth rate

p <- p[which(p$isocode %in% c("CHN","KOR","DEU")),] # just the necessary countries
p$country <- revalue(p$country, c("Republic of Korea" = "S. Korea"))

m <- p[which(p$isocode %in% c("KOR","DEU")),]
m1 <- lm(m$ln_rgdpo_pop~m$year, data=p, subset=(year>2004))
p$fit1 <- m1$coefficients[1] + m1$coefficients[2]*p$year

m <- p[which(p$isocode %in% c("KOR","CHN")),]
m2 <- lm(m$ln_rgdpo_pop~m$year, data=p, subset=(year<1970))
p$fit2 <- m2$coefficients[1] + m2$coefficients[2]*p$year

f <- ggplot(p, aes(x = year, y = csh_i, group=country)) +
  geom_line(aes(linetype=country)) + 
  labs(x = "Year", y = "Capital formation share of GDP", linetype="Country") + 
  scale_y_continuous(breaks=c(0,.1,.2,.3,.4,.5),limits=c(0,0.52)) +
  scale_x_continuous(breaks=c(1950,1960,1970,1980,1990,2000,2010,2020),limits=c(1950,2020)) + 
  theme_bw()

f <- ggplot(p, aes(x = year, y = gpop, group=country)) +
  geom_line(aes(linetype=country)) + 
  labs(x = "Year", y = "Population growth rate", linetype="Country") + 
  scale_y_continuous(breaks=c(-0.01,0,0.01,0.02,0.03,0.04),limits=c(-0.01,0.04)) +
  scale_x_continuous(breaks=c(1950,1960,1970,1980,1990,2000,2010,2020),limits=c(1950,2020)) + 
  theme_bw()

f <- ggplot(p, aes(x = year, y = ln_rgdpo_pop, group=country)) +
  geom_line(aes(x = year, y = fit1),color="gray",linetype="dashed") +
  geom_line(aes(x = year, y = fit2),color="gray",linetype="dashed") +
  geom_line(aes(linetype=country)) + 
  labs(x = "Year", y = "Log GDP per capita", linetype="Country") + 
  scale_x_continuous(breaks=c(1950,1960,1970,1980,1990,2000,2010,2020),limits=c(1950,2020)) + 
  theme_bw()

## Convergence
p <- pwt10.0 # save into dataframe
p$rgdpo_pop <- p$rgdpo/p$pop # GDP per worker
p$ln_rgdpo_pop <- log(p$rgdpo_pop)
p <- p %>% group_by(isocode) %>% mutate(lag.ln_rgdpo_pop = dplyr::lag(ln_rgdpo_pop, n = 50, default = NA))
p$gy <- (p$ln_rgdpo_pop - p$lag.ln_rgdpo_pop)/50 # population growth rate
p <- p[p$year==2019,]
p <- subset(p,isocode!="VEN")

f <- ggplot(p, aes(x = lag.ln_rgdpo_pop, y = gy, label=isocode)) +
  geom_text(size=3) + 
  scale_y_continuous(breaks=c(-0.01,0,0.01,0.02,0.03,0.04,0.05,0.06),limits=c(-0.01,0.06)) +
  scale_x_continuous(breaks=c(6,7,8,9,10),limits=c(6,10)) + 
  labs(x = "Log GDP per capita, 1969", y = "Avg. growth rate 1969-2019") + 
  theme_bw()

## Create conditional convergence plot
p <- pwt10.0 # save into dataframe
p$rgdpo_pop <- p$rgdpo/p$pop # GDP per worker
p$ln_rgdpo_pop <- log(p$rgdpo_pop)
p$ky <- round(p$rnna/p$rgdpna,digits=2)
p <- p[p$year>1988,] # limit to 1989 and after

p <- p %>% group_by(isocode) %>% mutate(mean_csh_i = mean(csh_i)) # avg cap formation share
p <- p[p$mean_csh_i>0 & p$mean_csh_i<.4,] # eliminate outliers on cap formation share
p <- p %>% group_by(isocode) %>% mutate(lead30.pop = dplyr::lead(pop, n = 30, default = NA))
p$gpop <- (log(p$lead30.pop) - log(p$pop))/30 # population growth rate
p <- p[p$gpop<.04,] # eliminate outliers
p <- p %>% group_by(isocode) %>% mutate(lead.ln_rgdpo_pop = dplyr::lead(ln_rgdpo_pop, n = 30, default = NA))
p$gy <- (p$lead.ln_rgdpo_pop - p$ln_rgdpo_pop)/30 # population growth rate

p$kystar <- p$mean_csh_i/(.018 + .05 + p$gpop)
p$ratio <- p$ky/p$kystar

p <- p[p$ratio<4,]
f <- ggplot(p, aes(x = ratio, y = gy, label = isocode)) +
  geom_text(size=3) +
  labs(x = "Ratio of KY to KYstar, 1989", y = "Growth rate of GDP per capita") + 
  geom_smooth(method='lm', se=FALSE, color="black") + 
  theme_bw()
