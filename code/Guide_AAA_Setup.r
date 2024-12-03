#########################################################################
# Setup and prep for running scripts to create Plotly figures for Study Guide
#########################################################################

#########################################################################
# Set working directory to where data files are stored 
#########################################################################
setwd("~/Dropbox/project/studyguide/data")

#########################################################################
# Source the R profile that contains your Plotly authentication
#########################################################################
source("~/Dropbox/Tools/.Rprofile")

#########################################################################
# Necessary libraries
#########################################################################
#library(devtools)
library(plotly)
library(pwt10)
library(dplyr)
library(OECD)
library(reshape2)
library(WDI)
library(processx)
library(htmlwidgets)
library(DT)
library(fredr)