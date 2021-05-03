# Data Cleaning script for MSDA 624 Analytics Capstone

# Author: Todd Albin
# Script date: 5/2/2021

# Load libraries needed for cleaning
library(readr)
library(dplyr)
library(tidyr)
library(skimr)
library(data.table)

# ------------------------------------------------------
# EPA AQI Data 

# Read in example data file
aqi_2010 <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/annual_aqi_by_county_2010.csv')

# Initial data inspection
glimpse(aqi_2010)
skim(aqi_2010)

colname_list <- data.frame(a = colnames(aqi_2010),
                     b = colnames(aqi_2011),
                     c = colnames(aqi_2012),
                     d = colnames(aqi_2013),
                     e = colnames(aqi_2014),
                     f = colnames(aqi_2015),
                     g = colnames(aqi_2016),
                     h = colnames(aqi_2017),
                     i = colnames(aqi_2018),
                     j = colnames(aqi_2019))
t_colnames_list <- t(colname_list)

coltype_list <- data.frame(a = sapply(aqi_2010, class),
                           b = sapply(aqi_2011, class),
                           c = sapply(aqi_2012, class),
                           d = sapply(aqi_2013, class),
                           e = sapply(aqi_2014, class),
                           f = sapply(aqi_2015, class),
                           g = sapply(aqi_2016, class),
                           h = sapply(aqi_2017, class),
                           i = sapply(aqi_2018, class),
                           j = sapply(aqi_2019, class))
t_coltype_list <- t(coltype_list)


