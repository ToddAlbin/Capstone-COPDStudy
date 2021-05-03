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

# Capture col names and col types of AQI data
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
t_colnames_list <- data.frame(t(colname_list))

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
t_coltype_list <- data.frame(t(coltype_list))

write_csv(t_colnames_list, "t_colnames_list.csv")
write_csv(t_coltype_list, "t_coltype_list.csv")

t_colnames_list <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_colnames_list.csv')
print(t_colnames_list)

t_coltype_list <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_coltype_list.csv')
print(t_coltype_list)

#-------------------------------------------------
# Capturing column names and col types for conc data
colname_list_conc <- data.frame(a = colnames(conc_2010),
                           b = colnames(conc_2011),
                           c = colnames(conc_2012),
                           d = colnames(conc_2013),
                           e = colnames(conc_2014),
                           f = colnames(conc_2015),
                           g = colnames(conc_2016),
                           h = colnames(conc_2017),
                           i = colnames(conc_2018),
                           j = colnames(conc_2019))
t_colnames_list_conc <- data.frame(t(colname_list_conc))

coltype_list_conc <- data.frame(a = sapply(conc_2010, typeof),
                           b = sapply(conc_2011, typeof),
                           c = sapply(conc_2012, typeof),
                           d = sapply(conc_2013, typeof),
                           e = sapply(conc_2014, typeof),
                           f = sapply(conc_2015, typeof),
                           g = sapply(conc_2016, typeof),
                           h = sapply(conc_2017, typeof),
                           i = sapply(conc_2018, typeof),
                           j = sapply(conc_2019, typeof))
t_coltype_list_conc <- data.frame(t(coltype_list_conc))

write_csv(t_colnames_list_conc, "t_colnames_list_conc.csv")
write_csv(t_coltype_list_conc, "t_coltype_list_conc.csv")

t_colnames_list_conc <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_colnames_list_conc.csv')
print(t_colnames_list)

t_coltype_list_conc <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_coltype_list_conc.csv')
print(t_coltype_list_conc)

#-------------------------------------------------

# Capture col names and col types for the Discharge Data
colname_list_diag <- data.frame(a = colnames(diag_2010),
                                b = colnames(diag_2011),
                                c = colnames(diag_2012),
                                d = colnames(diag_2013),
                                e = colnames(diag_2014),
                                f = colnames(diag_2015),
                                g = colnames(diag_2016),
                                h = colnames(diag_2017),
                                i = colnames(diag_2018),
                                j = colnames(diag_2019))
t_colnames_list_diag <- data.frame(t(colname_list_diag))

coltype_list_diag <- data.frame(a = sapply(diag_2010, typeof),
                                b = sapply(diag_2011, typeof),
                                c = sapply(diag_2012, typeof),
                                d = sapply(diag_2013, typeof),
                                e = sapply(diag_2014, typeof),
                                f = sapply(diag_2015, typeof),
                                g = sapply(diag_2016, typeof),
                                h = sapply(diag_2017, typeof),
                                i = sapply(diag_2018, typeof),
                                j = sapply(diag_2019, typeof))
t_coltype_list_diag <- data.frame(t(coltype_list_diag))

write_csv(t_colnames_list_diag, "t_colnames_list_diag.csv")
write_csv(t_coltype_list_diag, "t_coltype_list_diag.csv")

t_colnames_list_diag <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_colnames_list_diag.csv')
print(t_colnames_list_diag)

t_coltype_list_diag <- readr::read_csv('https://raw.githubusercontent.com/ToddAlbin/Capstone-COPDStudy/main/t_coltype_list_diag.csv')
print(t_coltype_list_diag)
