# Data Import script for MSDA 624 Analytics Capstone

# Author: Todd Albin
# Script date: 5/2/2021

# Load libraries needed for importing and joining tables
library(readr)
library(readxl)
library(dplyr)

# ------------------------------------------------------
# Indiana Hospital Discharge Data - initial data load

# 2010 File: Data is split across 4 tabs of the Excel xls file
diag_2010_1 <- read_xls("DIAG_IN2010.xls", 1)
diag_2010_2 <- read_xls("DIAG_IN2010.xls", 2)
diag_2010_3 <- read_xls("DIAG_IN2010.xls", 3)
diag_2010_4 <- read_xls("DIAG_IN2010.xls", 4)
diag_2010 <- bind_rows(diag_2010_1, diag_2010_2, diag_2010_3, diag_2010_4)

# diag_2010: remove redundant data files from global environment
rm(diag_2010_1)
rm(diag_2010_2)
rm(diag_2010_3)
rm(diag_2010_4)

# 2011 file: Data is split across 4 tabs of the Excel xls file
diag_2011_1 <- read_xls("DIAG_IN2011.xls", 1)
diag_2011_2 <- read_xls("DIAG_IN2011.xls", 2)
diag_2011_3 <- read_xls("DIAG_IN2011.xls", 3)
diag_2011_4 <- read_xls("DIAG_IN2011.xls", 4)
diag_2011 <- bind_rows(diag_2011_1, diag_2011_2, diag_2011_3, diag_2011_4)

# diag_2011: remove redundant data files from global environment
rm(diag_2011_1)
rm(diag_2011_2)
rm(diag_2011_3)
rm(diag_2011_4)

# 2012 file: Data is split across 4 tabs of the Excel xls file
diag_2012_1 <- read_xls("DIAG_IN2012.xls", 1)
diag_2012_2 <- read_xls("DIAG_IN2012.xls", 2)
diag_2012_3 <- read_xls("DIAG_IN2012.xls", 3)
diag_2012_4 <- read_xls("DIAG_IN2012.xls", 4)
diag_2012 <- bind_rows(diag_2012_1, diag_2012_2, diag_2012_3, diag_2012_4)

# diag_2012: remove redundant data files from global environment
rm(diag_2012_1)
rm(diag_2012_2)
rm(diag_2012_3)
rm(diag_2012_4)

# 2013 file: Data is split across 4 tabs of the Excel xls file
diag_2013_1 <- read_xls("DIAG_IN2013.xls", 1)
diag_2013_2 <- read_xls("DIAG_IN2013.xls", 2)
diag_2013_3 <- read_xls("DIAG_IN2013.xls", 3)
diag_2013_4 <- read_xls("DIAG_IN2013.xls", 4)
diag_2013 <- bind_rows(diag_2013_1, diag_2013_2, diag_2013_3, diag_2013_4)

# diag_2013: remove redundant data files from global environment
rm(diag_2013_1)
rm(diag_2013_2)
rm(diag_2013_3)
rm(diag_2013_4)

# 2014 file: Data is split across 4 tabs of the Excel xls file
diag_2014_1 <- read_xls("DIAG_IN2014.xls", 1)
diag_2014_2 <- read_xls("DIAG_IN2014.xls", 2)
diag_2014_3 <- read_xls("DIAG_IN2014.xls", 3)
diag_2014_4 <- read_xls("DIAG_IN2014.xls", 4)
diag_2014 <- bind_rows(diag_2014_1, diag_2014_2, diag_2014_3, diag_2014_4)

# diag_2014: remove redundant data files from global environment
rm(diag_2014_1)
rm(diag_2014_2)
rm(diag_2014_3)
rm(diag_2014_4)

# 2015 file: Data is split across 5 tabs of the Excel xls file
diag_2015_1 <- read_xls("DIAG_IN2015.xls", 1)
diag_2015_2 <- read_xls("DIAG_IN2015.xls", 2)
diag_2015_3 <- read_xls("DIAG_IN2015.xls", 3)
diag_2015_4 <- read_xls("DIAG_IN2015.xls", 4)
diag_2015_5 <- read_xls("DIAG_IN2015.xls", 5)
diag_2015 <- bind_rows(diag_2015_1, diag_2015_2, diag_2015_3, diag_2015_4, diag_2015_5)

# diag_2015: remove redundant data files from global environment
rm(diag_2015_1)
rm(diag_2015_2)
rm(diag_2015_3)
rm(diag_2015_4)
rm(diag_2015_5)

# 2016 file: Data is split across 4 tabs of the Excel xls file
diag_2016_1 <- read_xls("DIAG_IN2016.xls", 1)
diag_2016_2 <- read_xls("DIAG_IN2016.xls", 2)
diag_2016_3 <- read_xls("DIAG_IN2016.xls", 3)
diag_2016_4 <- read_xls("DIAG_IN2016.xls", 4)
diag_2016 <- bind_rows(diag_2016_1, diag_2016_2, diag_2016_3, diag_2016_4)

# diag_2016: remove redundant data files from global environment
rm(diag_2016_1)
rm(diag_2016_2)
rm(diag_2016_3)
rm(diag_2016_4)

# 2017 file: Data is split across 4 tabs of the Excel xls file
diag_2017_1 <- read_xls("DIAG_IN2017.xls", 1)
diag_2017_2 <- read_xls("DIAG_IN2017.xls", 2)
diag_2017_3 <- read_xls("DIAG_IN2017.xls", 3)
diag_2017_4 <- read_xls("DIAG_IN2017.xls", 4)
diag_2017 <- bind_rows(diag_2017_1, diag_2017_2, diag_2017_3, diag_2017_4)

# diag_2017: remove redundant data files from global environment
rm(diag_2017_1)
rm(diag_2017_2)
rm(diag_2017_3)
rm(diag_2017_4)

# 2018 file: Data is split across 4 tabs of the Excel xls file
diag_2018_1 <- read_xls("DIAG_IN2018.xls", 1)
diag_2018_2 <- read_xls("DIAG_IN2018.xls", 2)
diag_2018_3 <- read_xls("DIAG_IN2018.xls", 3)
diag_2018_4 <- read_xls("DIAG_IN2018.xls", 4)
diag_2018 <- bind_rows(diag_2018_1, diag_2018_2, diag_2018_3, diag_2018_4)

# diag_2018: remove redundant data files from global environment
rm(diag_2018_1)
rm(diag_2018_2)
rm(diag_2018_3)
rm(diag_2018_4)

# 2019 file: Data is split across 4 tabs of the Excel xls file
diag_2019_1 <- read_xls("DIAG_IN2019.xls", 1)
diag_2019_2 <- read_xls("DIAG_IN2019.xls", 2)
diag_2019_3 <- read_xls("DIAG_IN2019.xls", 3)
diag_2019_4 <- read_xls("DIAG_IN2019.xls", 4)
diag_2019 <- bind_rows(diag_2019_1, diag_2019_2, diag_2019_3, diag_2019_4)

# diag_2019: remove redundant data files from global environment
rm(diag_2019_1)
rm(diag_2019_2)
rm(diag_2019_3)
rm(diag_2019_4)

# -------------------------------------------------------------
# EPA AQI Data - initial data load

# Read in individual csv files
aqi_2010 <- read_csv("annual_aqi_by_county_2010.csv")
aqi_2011 <- read_csv("annual_aqi_by_county_2011.csv")
aqi_2012 <- read_csv("annual_aqi_by_county_2012.csv")
aqi_2013 <- read_csv("annual_aqi_by_county_2013.csv")
aqi_2014 <- read_csv("annual_aqi_by_county_2014.csv")
aqi_2015 <- read_csv("annual_aqi_by_county_2015.csv")
aqi_2016 <- read_csv("annual_aqi_by_county_2016.csv")
aqi_2017 <- read_csv("annual_aqi_by_county_2017.csv")
aqi_2018 <- read_csv("annual_aqi_by_county_2018.csv")
aqi_2019 <- read_csv("annual_aqi_by_county_2019.csv")

# -------------------------------------------------------------
# EPA Annual Concentration Data - initial data load

# Read in individual csv files
conc_2010 <- read_csv("annual_conc_by_monitor_2010.csv")
conc_2011 <- read_csv("annual_conc_by_monitor_2011.csv")
conc_2012 <- read_csv("annual_conc_by_monitor_2012.csv")
conc_2013 <- read_csv("annual_conc_by_monitor_2013.csv")
conc_2014 <- read_csv("annual_conc_by_monitor_2014.csv")
conc_2015 <- read_csv("annual_conc_by_monitor_2015.csv")
conc_2016 <- read_csv("annual_conc_by_monitor_2016.csv")
conc_2017 <- read_csv("annual_conc_by_monitor_2017.csv")
conc_2018 <- read_csv("annual_conc_by_monitor_2018.csv")
conc_2019 <- read_csv("annual_conc_by_monitor_2019.csv")

