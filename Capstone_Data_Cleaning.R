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

coltype_list <- data.frame(a = sapply(aqi_2010, typeof),
                           b = sapply(aqi_2011, typeof),
                           c = sapply(aqi_2012, typeof),
                           d = sapply(aqi_2013, typeof),
                           e = sapply(aqi_2014, typeof),
                           f = sapply(aqi_2015, typeof),
                           g = sapply(aqi_2016, typeof),
                           h = sapply(aqi_2017, typeof),
                           i = sapply(aqi_2018, typeof),
                           j = sapply(aqi_2019, typeof))
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

#-------------------------------------------------
# skim all data sets to identify potential issues

skim(aqi_2010)
skim(aqi_2011)
skim(aqi_2012)
skim(aqi_2013)
skim(aqi_2014)
skim(aqi_2015)
skim(aqi_2016)
skim(aqi_2017)
skim(aqi_2018)
skim(aqi_2019)

skim(conc_2010)
skim(conc_2011)
skim(conc_2012)
skim(conc_2013)
skim(conc_2014)
skim(conc_2015)
skim(conc_2016)
skim(conc_2017)
skim(conc_2018)
skim(conc_2019)

skim(diag_2010)
skim(diag_2011)
skim(diag_2012)
skim(diag_2013)
skim(diag_2014)
skim(diag_2015)
skim(diag_2016)
skim(diag_2017)
skim(diag_2018)
skim(diag_2019)
#-------------------------------
# Renaming of columns for the Discharge Data
diag_2010 <- rename(diag_2010, HOSPITAL_ID = HOSPID)
diag_2010 <- rename(diag_2010, DIAGNOSIS_1 = DIAG1)
colnames(diag_2010)

colnames(diag_2011)
diag_2011 <- rename(diag_2011, HOSPITAL_ID = HOSPID)
diag_2011 <- rename(diag_2011, DIAGNOSIS_1 = DIAG1)
colnames(diag_2011)

colnames(diag_2012)
diag_2012 <- rename(diag_2012, HOSPITAL_ID = HOSPID)
diag_2012 <- rename(diag_2012, DIAGNOSIS_1 = DIAG1)
colnames(diag_2012)

colnames(diag_2013)
diag_2013 <- rename(diag_2013, HOSPITAL_ID = HOSPID)
diag_2013 <- rename(diag_2013, DIAGNOSIS_1 = DIAG1)
colnames(diag_2013)

#------------------------------------------------
# Subset AQI data and create new column "RiskDays"
aqi_2010_filter <- aqi_2010 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
select(State, County, Year, RiskDays)
  
aqi_2011_filter <- aqi_2011 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2012_filter <- aqi_2012 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2013_filter <- aqi_2013 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2014_filter <- aqi_2014 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2015_filter <- aqi_2015 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2016_filter <- aqi_2016 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2017_filter <- aqi_2017 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2018_filter <- aqi_2018 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

aqi_2019_filter <- aqi_2019 %>%
  filter(State == "Indiana") %>%
  filter(County %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  mutate(RiskDays = `Moderate Days` + `Unhealthy for Sensitive Groups Days` + `Unhealthy Days` + `Very Unhealthy Days` + `Hazardous Days`) %>%
  select(State, County, Year, RiskDays)

# Join tables together into aqi_final
aqi_final <- bind_rows(aqi_2010_filter,
                       aqi_2011_filter,
                       aqi_2012_filter,
                       aqi_2013_filter,
                       aqi_2014_filter,
                       aqi_2015_filter,
                       aqi_2016_filter,
                       aqi_2017_filter,
                       aqi_2018_filter,
                       aqi_2019_filter)

#---------------------------------------------------
# Subset Conc data and create new column ""

conc_2010_filter <- conc_2010 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2011_filter <- conc_2011 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2012_filter <- conc_2012 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2013_filter <- conc_2013 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2014_filter <- conc_2014 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2015_filter <- conc_2015 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2016_filter <- conc_2016 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2017_filter <- conc_2017 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2018_filter <- conc_2018 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

conc_2019_filter <- conc_2019 %>%
  filter(`State Name` == "Indiana") %>%
  filter(`County Name` %in% c("Marion", "Allen", "Vanderburgh", "St. Joseph", "Hamilton", "Monroe", "Lake", "Tippecanoe", "Delaware")) %>%
  filter(`Pollutant Standard` == "PM25 Annual 2006") %>%
  select(`State Name`, `County Name`, Year, `Arithmetic Mean`) %>%
  rename(PM25 = 'Arithmetic Mean')

# Join tables together into conc_final
conc_combined <- bind_rows(conc_2010_filter,
                        conc_2011_filter,
                        conc_2012_filter,
                        conc_2013_filter,
                        conc_2014_filter,
                        conc_2015_filter,
                        conc_2016_filter,
                        conc_2017_filter,
                        conc_2018_filter,
                        conc_2019_filter)

# Now average the PM25 values across each county
conc_final <- conc_combined %>%
  group_by(`County Name`, Year) %>%
  summarise(PM25_Avg = mean(PM25)) %>%
  mutate('State Name' = 'Indiana') %>%
  ungroup()

# Save some files as csv files for use with the Rmd file

write_csv(conc_combined, "conc_combined.csv")
#------------------------------------------------------------
# Subset Diag data and create new columnS "HOSP_COUNT" and "STATE"

diag_2019_filter <- diag_2019 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 463, 491, 30, 31, 32, 33, 68, 126, 166, 27, 28, 464, 103, 143, 155, 170, 171, 172, 725, 726, 11, 158, 458, 38, 44, 470, 705, 60, 61, 162, 489, 81, 493)) %>%
  filter(DIAGNOSIS_1 %in% c('J440', 'J441', 'J449')) %>%
  mutate(YEAR = 2019) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 463, 491) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 126, 166) ~ "Allen",
    HOSPITAL_ID %in% c(27, 28, 464) ~ "Vanderburgh",
    HOSPITAL_ID == 103 ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172, 725, 726) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470, 705) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 162, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 493) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2018_filter <- diag_2018 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 463, 491, 30, 31, 32, 33, 68, 126, 166, 483, 26, 27, 28, 464, 103, 143, 155, 170, 171, 172, 725, 726, 11, 158, 458, 38, 44, 470, 60, 61, 162, 489, 81, 493)) %>%
  filter(DIAGNOSIS_1 %in% c('J440', 'J441', 'J449')) %>%
  mutate(YEAR = 2018) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 463, 491) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 126, 166, 483) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 464) ~ "Vanderburgh",
    HOSPITAL_ID == 103 ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172, 725, 726) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 162, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 493) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2017_filter <- diag_2017 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 491, 30, 31, 32, 33, 68, 126, 166, 483, 26, 27, 28, 464, 103, 143, 155, 170, 171, 172, 11, 158, 458, 38, 44, 470, 60, 61, 162, 489, 81, 493)) %>%
  filter(DIAGNOSIS_1 %in% c('J440', 'J441', 'J449')) %>%
  mutate(YEAR = 2017) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 491) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 126, 166, 483) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 464) ~ "Vanderburgh",
    HOSPITAL_ID == 103 ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 162, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 493) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2016_filter <- diag_2016 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 132, 137, 138, 139, 140, 142, 145, 146, 148, 149, 151, 154, 165, 445, 446, 459, 463, 466, 486, 490, 491, 30, 31, 32, 33, 68, 125, 126, 144, 166, 465, 467, 472, 476, 483, 26, 27, 28, 29, 441, 464, 78, 96, 103, 104, 449, 475, 143, 155, 170, 171, 172, 11, 122, 158, 440, 458, 38, 40, 44, 470, 60, 61, 127, 162, 447, 484, 489, 81, 478, 493)) %>%
  filter(DIAGNOSIS_1 %in% c('J440', 'J441', 'J449')) %>%
  mutate(YEAR = 2016) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 132, 137, 138, 139, 140, 142, 145, 146, 148, 149, 151, 154, 165, 445, 446, 459, 463, 466, 486, 490, 491) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 144, 166, 465, 467, 472, 476, 483) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 29, 441, 464) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(78, 96, 103, 104, 449, 475) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 122, 158, 440, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 40, 44, 470) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162, 447, 484, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478, 493) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2015_filter <- diag_2015 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615, 26, 27, 28, 441, 464, 609, 616, 103, 630, 143, 155, 170, 171, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('49120', '49121', '49122', '49320', '49321', '49322')) %>%
  mutate(YEAR = 2015) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464, 609, 616) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103, 630) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470, 627) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162, 484, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2014_filter <- diag_2014 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615, 26, 27, 28, 441, 464, 609, 616, 103, 630, 143, 155, 170, 171, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('4912', '49120', '49121', '4932', '49320', '49321')) %>%
  mutate(YEAR = 2014) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464, 609, 616) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103, 630) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470, 627) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162, 484, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2013_filter <- diag_2013 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615, 26, 27, 28, 441, 464, 609, 616, 103, 630, 143, 155, 170, 171, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('4912', '49120', '49121', '4932', '49320', '49321')) %>%
  mutate(YEAR = 2013) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 626) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464, 609, 616) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103, 630) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470, 627) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162, 484, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2012_filter <- diag_2012 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615, 26, 27, 28, 441, 464, 609, 616, 103, 143, 155, 170, 171, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('4912', '49120', '49121', '4932', '49320', '49321')) %>%
  mutate(YEAR = 2012) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 463, 466, 486, 601, 612, 613) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 604, 615) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464, 609, 616) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155, 170, 171, 172) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470, 627) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162, 484, 489) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2011_filter <- diag_2011 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 466, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 26, 27, 28, 441, 464, 103, 449, 475, 143, 155, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('4912', '49120', '49121', '4932', '49320', '49321')) %>%
  mutate(YEAR = 2011) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 466) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103, 449, 475) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

diag_2010_filter <- diag_2010 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 466, 30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483, 26, 27, 28, 441, 464, 103, 449, 475, 143, 155, 11, 158, 458, 38, 44, 470, 627, 60, 61, 127, 162, 484, 489, 81, 478)) %>%
  filter(DIAGNOSIS_1 %in% c('4912', '49120', '49121', '4932', '49320', '49321')) %>%
  mutate(YEAR = 2010) %>%
  mutate(COUNTY = case_when(
    HOSPITAL_ID %in% c(1, 51, 52, 53, 55, 62, 63, 98, 111, 118, 130, 137, 138, 139, 142, 146, 151, 154, 165, 459, 466) ~ "Marion",
    HOSPITAL_ID %in% c(30, 31, 32, 33, 68, 125, 126, 166, 465, 467, 476, 483) ~ "Allen",
    HOSPITAL_ID %in% c(26, 27, 28, 441, 464) ~ "Vanderburgh",
    HOSPITAL_ID %in% c(103, 449, 475) ~ "St. Joseph",
    HOSPITAL_ID %in% c(143, 155) ~ "Hamilton",
    HOSPITAL_ID %in% c(11, 158, 458) ~ "Monroe",
    HOSPITAL_ID %in% c(38, 44, 470) ~ "Lake",
    HOSPITAL_ID %in% c(60, 61, 127, 162) ~ "Tippecanoe",
    HOSPITAL_ID %in% c(81, 478) ~ "Delaware"
  )) %>%
  select(YEAR, COUNTY, HOSPITAL_ID, DIAGNOSIS_1, PATS) %>%
  group_by(COUNTY, YEAR) %>%
  summarise(HOSP_COUNT = sum(PATS)) %>%
  mutate("STATE" = "Indiana")%>%
  ungroup()

# Join tables together into diag_final
diag_final <- bind_rows(diag_2010_filter,
                           diag_2011_filter,
                           diag_2012_filter,
                           diag_2013_filter,
                           diag_2014_filter,
                           diag_2015_filter,
                           diag_2016_filter,
                           diag_2017_filter,
                           diag_2018_filter,
                           diag_2019_filter)

# Save off some tables for use within the Rmd file

diag_2019_filter_cities <- diag_2019 %>%
  filter(HOSPITAL_ID %in% c(1, 51, 53, 55, 62, 63, 111, 137, 138, 139, 142, 146, 151, 154, 459, 463, 491, 30, 31, 32, 33, 68, 126, 166, 27, 28, 464, 103, 143, 155, 170, 171, 172, 725, 726, 11, 158, 458, 38, 44, 470, 705, 60, 61, 162, 489, 81, 493)) %>%
  filter(DIAGNOSIS_1 %in% c('J440', 'J441', 'J449'))

write_csv(diag_2019_filter_cities, "diag_2019_cities.csv")
#-----------------------------------------------------------
# Join the three individual reduced tables into a final analysis table

analysis <- inner_join(aqi_final, conc_final, by = c("State"="State Name", "County"="County Name", "Year"="Year"))

# rename the HOSP_COUNT column to read Hosp_Count
diag_final <- rename(diag_final, Hosp_Count = HOSP_COUNT)

analysis <- inner_join(analysis, diag_final, by = c("State"="STATE", "County"="COUNTY", "Year"="YEAR"))

write_csv(analysis, "analysis.csv")
write_csv(aqi_final, "aqi_final.csv")
write_csv(conc_final, "conc_final.csv")
write_csv(diag_final, "diag_final.csv")

# Reduce analysis to only variables of interest
model_data <- analysis %>%
  select(Hosp_Count, RiskDays, PM25_Avg)
