# Data Cleaning script for MSDA 624 Analytics Capstone

# Author: Todd Albin
# Script date: 5/2/2021

# Load libraries needed for cleaning
library(dplyr)
library(tidyr)
library(skimr)

# ------------------------------------------------------
# EPA AQI Data 

# Read in example data file 

# Initial data inspection
skim(aqi_2010)

