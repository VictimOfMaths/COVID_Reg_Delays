rm(list=ls())

library(tidyverse)
library(curl)
library(readxl)
library(viridis)
library(ggtext)

#Download all the weeks of registration/occurrence data
temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek46.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week46 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week46) <- c("code", "name", "cause", "week", "location", "deaths46")
week46$deaths46 <- as.numeric(week46$deaths46)

week46 <- week46 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths46=sum(deaths46))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v33/lahbtablesweek45.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week45 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week45) <- c("code", "name", "cause", "week", "location", "deaths45")
week45$deaths45 <- as.numeric(week45$deaths45)

week45 <- week45 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths45=sum(deaths45))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v31/lahbtablesweek44.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week44 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week44) <- c("code", "name", "cause", "week", "location", "deaths44")
week44$deaths44 <- as.numeric(week44$deaths44)

week44 <- week44 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths44=sum(deaths44))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek43.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week43 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week43) <- c("code", "name", "cause", "week", "location", "deaths43")
week43$deaths43 <- as.numeric(week43$deaths43)

week43 <- week43 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths43=sum(deaths43))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v29/lahbtablesweek4226102020173954.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week42 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week42) <- c("code", "name", "cause", "week", "location", "deaths42")
week42$deaths42 <- as.numeric(week42$deaths42)

week42 <- week42 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths42=sum(deaths42))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek41.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week41 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week41) <- c("code", "name", "cause", "week", "location", "deaths41")
week41$deaths41 <- as.numeric(week41$deaths41)

week41 <- week41 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths41=sum(deaths41))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek40.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week40 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week40) <- c("code", "name", "cause", "week", "location", "deaths40")
week40$deaths40 <- as.numeric(week40$deaths40)

week40 <- week40 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths40=sum(deaths40))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek39.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week39 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week39) <- c("code", "name", "cause", "week", "location", "deaths39")
week39$deaths39 <- as.numeric(week39$deaths39)

week39 <- week39 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths39=sum(deaths39))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek38.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week38 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week38) <- c("code", "name", "cause", "week", "location", "deaths38")
week38$deaths38 <- as.numeric(week38$deaths38)

week38 <- week38 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths38=sum(deaths38))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v24/lahbtablesweek3721092020170523.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week37 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week37) <- c("code", "name", "cause", "week", "location", "deaths37")
week37$deaths37 <- as.numeric(week37$deaths37)

week37 <- week37 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths37=sum(deaths37))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek36.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week36 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week36) <- c("code", "name", "cause", "week", "location", "deaths36")
week36$deaths36 <- as.numeric(week36$deaths36)

week36 <- week36 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths36=sum(deaths36))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek35.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week35 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week35) <- c("code", "name", "cause", "week", "location", "deaths35")

week35$deaths35 <- as.numeric(week35$deaths35)

week35 <- week35 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths35=sum(deaths35))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek34.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week34 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week34) <- c("code", "name", "cause", "week", "location", "deaths34")

week34$deaths34 <- as.numeric(week34$deaths34)

week34 <- week34 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths34=sum(deaths34))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek33.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week33 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week33) <- c("code", "name", "cause", "week", "location", "deaths33")

week33$deaths33 <- as.numeric(week33$deaths33)

week33 <- week33 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths33=sum(deaths33))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=%2fpeoplepopulationandcommunity%2fhealthandsocialcare%2fcausesofdeath%2fdatasets%2fdeathregistrationsandoccurrencesbylocalauthorityandhealthboard%2f2020/lahbtablesweek32.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week32 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week32) <- c("code", "name", "cause", "week", "location", "deaths32")

week32$deaths32 <- as.numeric(week32$deaths32)

week32 <- week32 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths32=sum(deaths32))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v18/lahbtablesweek31.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week31 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week31) <- c("code", "name", "cause", "week", "location", "deaths31")

week31$deaths31 <- as.numeric(week31$deaths31)

week31 <- week31 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths31=sum(deaths31))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v17/lahbtablesweek30.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week30 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week30) <- c("code", "name", "cause", "week", "location", "deaths30")

week30$deaths30 <- as.numeric(week30$deaths30)

week30 <- week30 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths30=sum(deaths30))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v16/lahbtablesweek29.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week29 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week29) <- c("code", "name", "cause", "week", "location", "deaths29")

week29$deaths29 <- as.numeric(week29$deaths29)

week29 <- week29 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths29=sum(deaths29))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v15/lahbtablesweek28.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week28 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week28) <- c("code", "name", "cause", "week", "location", "deaths28")

week28$deaths28 <- as.numeric(week28$deaths28)

week28 <- week28 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths28=sum(deaths28))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v14/lahbtablesweek27.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week27 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week27) <- c("code", "name", "cause", "week", "location", "deaths27")

week27$deaths27 <- as.numeric(week27$deaths27)

week27 <- week27 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths27=sum(deaths27))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v13/lahbtablesweek26.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week26 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week26) <- c("code", "name", "cause", "week", "location", "deaths26")

week26$deaths26 <- as.numeric(week26$deaths26)

week26 <- week26 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths26=sum(deaths26))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v12/lahbtablesweek25.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week25 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week25) <- c("code", "name", "cause", "week", "location", "deaths25")

week25$deaths25 <- as.numeric(week25$deaths25)

week25 <- week25 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths25=sum(deaths25))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v11/lahbtablesweek24.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week24 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week24) <- c("code", "name", "cause", "week", "location", "deaths24")

week24$deaths24 <- as.numeric(week24$deaths24)

week24 <- week24 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths24=sum(deaths24))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v10/lahbtablesweek23.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week23 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week23) <- c("code", "name", "cause", "week", "location", "deaths23")

week23$deaths23 <- as.numeric(week23$deaths23)

week23 <- week23 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths23=sum(deaths23))

temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v9/lahbtablesweek22.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week22 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week22) <- c("code", "name", "cause", "week", "location", "deaths22")

week22$deaths22 <- as.numeric(week22$deaths22)

week22 <- week22 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths22=sum(deaths22))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v8/lahbtablesweek21.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week21 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week21) <- c("code", "name", "cause", "week", "location", "deaths21")

week21$deaths21 <- as.numeric(week21$deaths21)

week21 <- week21 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths21=sum(deaths21))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v7/lahbtablesweek20finalcodes.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week20 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week20) <- c("code", "name", "cause", "week", "location", "deaths20")

week20$deaths20 <- as.numeric(week20$deaths20)

week20 <- week20 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths20=sum(deaths20))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v6/lahbtablesweek19.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week19 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week19) <- c("code", "name", "cause", "week", "location", "deaths19")

week19$deaths19 <- as.numeric(week19$deaths19)

week19 <- week19 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths19=sum(deaths19))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v5/lahbtablesweek18.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week18 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week18) <- c("code", "name", "cause", "week", "location", "deaths18")

week18$deaths18 <- as.numeric(week18$deaths18)

week18 <- week18 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths18=sum(deaths18))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v4/lahbtablesweek17.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week17 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week17) <- c("code", "name", "cause", "week", "location", "deaths17")

week17$deaths17 <- as.numeric(week17$deaths17)

week17 <- week17 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths17=sum(deaths17))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v3/lahbtablesweek16new.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week16 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week16) <- c("code", "name", "cause", "week", "location", "deaths16")

week16$deaths16 <- as.numeric(week16$deaths16)

week16 <- week16 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths16=sum(deaths16))


temp <- tempfile()
source <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/healthandsocialcare/causesofdeath/datasets/deathregistrationsandoccurrencesbylocalauthorityandhealthboard/2020/previous/v1/lahbtables.xlsx"
temp <- curl_download(url=source, destfile=temp, quiet=FALSE, mode="wb")

week15 <- read_excel(temp, sheet="Occurrences - All data", col_names=FALSE)[-c(1:4),] %>% 
  select(-c(2))

colnames(week15) <- c("code", "name", "cause", "week", "location", "deaths15")

week15$deaths15 <- as.numeric(week15$deaths15)

week15 <- week15 %>% 
  mutate(name=case_when(
    code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "Buckinghamshire",
    TRUE ~ name),
    code=case_when(
      code %in% c("E07000004", "E07000005", "E07000006", "E07000007") ~ "E06000060",
      TRUE ~ code)) %>% 
  group_by(name, code, cause, week, location) %>% 
  summarise(deaths15=sum(deaths15))


#Stick them all together
data <- merge(week15, week16, all=TRUE) %>% 
  merge(week17, all=TRUE) %>% 
  merge(week18, all=TRUE) %>% 
  merge(week19, all=TRUE) %>% 
  merge(week20, all=TRUE) %>% 
  merge(week21, all=TRUE) %>% 
  merge(week22, all=TRUE) %>% 
  merge(week23, all=TRUE) %>% 
  merge(week24, all=TRUE) %>% 
  merge(week25, all=TRUE) %>% 
  merge(week26, all=TRUE) %>% 
  merge(week27, all=TRUE) %>% 
  merge(week28, all=TRUE) %>% 
  merge(week29, all=TRUE) %>% 
  merge(week30, all=TRUE) %>% 
  merge(week31, all=TRUE) %>% 
  merge(week32, all=TRUE) %>% 
  merge(week33, all=TRUE) %>% 
  merge(week34, all=TRUE) %>% 
  merge(week35, all=TRUE) %>% 
  merge(week36, all=TRUE) %>% 
  merge(week37, all=TRUE) %>% 
  merge(week38, all=TRUE) %>% 
  merge(week39, all=TRUE) %>% 
  merge(week40, all=TRUE) %>% 
  merge(week41, all=TRUE) %>% 
  merge(week42, all=TRUE) %>% 
  merge(week43, all=TRUE) %>% 
  merge(week44, all=TRUE) %>% 
  merge(week45, all=TRUE) %>%
  merge(week46, all=TRUE) %>%
  mutate(week=as.numeric(week), deaths31=as.numeric(deaths31)) %>% 
  #get rid of locations
  group_by(code, name, cause, week) %>% 
  summarise(across(starts_with("deaths"), sum)) %>% 
  #long format
  gather(time, deaths, starts_with("deaths")) %>% 
  #pull other cause out
  pivot_wider(names_from=cause, values_from=deaths) %>% 
  mutate(`Other causes`=`All causes`-`COVID 19`) %>% 
  gather(cause, deaths, c("All causes", "COVID 19", "Other causes")) %>% 
  #tidy up a bit
  mutate(regweek=as.numeric(substr(time,7,8))) %>% 
  filter(week<=regweek) %>% 
  select(-c("time"))

#Generate National summaries
data.e <- data %>% 
  filter(substr(code,1,1)=="E") %>% 
  group_by(week, regweek, cause) %>% 
  summarise(deaths=sum(deaths)) %>% 
  mutate(name="England")

data.w <- data %>% 
  filter(substr(code,1,1)=="W") %>% 
  group_by(week, regweek, cause) %>% 
  summarise(deaths=sum(deaths)) %>% 
  mutate(name="Wales")

data.ew <- data %>% 
  group_by(week, regweek, cause) %>% 
  summarise(deaths=sum(deaths)) %>% 
  mutate(name="England & Wales")

data <- bind_rows(data, data.e, data.w, data.ew)

write.csv(data, "COVID_Reg_Delays/data.csv")

plotweek <- 46
LA <- "England & Wales"
plotcause <- "All causes"

plotdata <- data %>% 
  filter(name==LA & (regweek==plotweek | regweek==plotweek-1) & cause==plotcause) %>% 
  spread(regweek, deaths) %>% 
  rename(lastweek=5, thisweek=6) %>% 
  mutate(newregs=case_when(
    week==plotweek ~ thisweek,
    TRUE ~ thisweek-lastweek)) %>% 
  gather(regdate, deaths, c("lastweek", "newregs")) %>% 
  mutate(regdate=factor(regdate, levels=c("newregs", "lastweek")))

#Calculate trends in lag over time
lagdata <- data %>% 
  filter(name==LA) %>% 
  group_by(code, name, cause, week) %>% 
  mutate(newregs=case_when(
    regweek==week ~ deaths,
    regweek>min(regweek) ~ deaths-lag(deaths, 1, order_by=regweek),
    TRUE ~ 1)) %>% 
  mutate(lag=regweek-week, wgtdeaths=lag*newregs) %>% 
  group_by(code, name, cause, regweek) %>% 
  summarise(meanlag=sum(wgtdeaths)/sum(newregs))

labeldata <- plotdata %>% 
  filter(regdate=="newregs") %>% 
  mutate(lag=plotweek-week,
         deaths=if_else(deaths==0, NA_real_, deaths))

meanlag <- labeldata %>% 
  mutate(wgtdeaths=lag*deaths) %>% 
  summarise(meanlag=sum(wgtdeaths, na.rm=TRUE)/sum(deaths, na.rm=TRUE))

#Plot of new and previous occurrences
ggplot(plotdata)+
  geom_col(aes(x=week, y=deaths, fill=regdate), show.legend=FALSE)+
  geom_text(data=labeldata, aes(x=week, y=thisweek, label=deaths), vjust=-0.5, size=rel(2), colour="#0072c2")+
  scale_fill_manual(values=c("#0072c2", "#ffa73c"), name="Date of registration", 
                    labels=c(paste0("Week ", plotweek), paste0("Before week ", plotweek)))+
  scale_x_continuous(name="Week of death (occurrence)")+
  scale_y_continuous(name="Number of deaths")+
  annotate("text", x=plotweek-10, y=max(plotdata$thisweek)*0.9, 
           label=paste0("Average registration delay: ", round(meanlag[,3], 2), " weeks"),
           fontface=2)+
  theme_classic()+
  theme(plot.subtitle=element_markdown(), plot.title=element_text(face="bold", size=rel(2)))+
  labs(title=paste0("Delays in deaths registrations in ", LA),
       subtitle=paste0("Week of occurence for <span style='color:#0072c2;'>deaths registered in week ", 
                       plotweek, "</span> from ", plotcause,
                       " compared to <span style='color:#ffa73c;'>those registered previously.</span><br>Only deaths occuring in 2020 are included in the calculation of the average delay."),
       caption="Data from ONS | Plot by @VictimOfMaths")

#Plot of lags
lagdata %>% 
  filter(regweek>16) %>% 
  ggplot()+
  geom_line(aes(x=regweek, y=meanlag, colour=cause))+
  scale_x_continuous(name="Week of death registration")+
  scale_y_continuous(limits=c(0,NA), name="Average registration delay (weeks)")+
  scale_colour_paletteer_d("wesanderson::Darjeeling1", name="Cause of death")+
  theme_classic()+
  theme(plot.title=element_text(face="bold", size=rel(2)))+
  labs(title=paste0("Delays in deaths registrations in ", LA),
       subtitle="Mean number of weeks elapsed between death occurring and being registered for COVID and non-COVID deaths.\nDeaths occuring in previous years are not included in these calculations and figures therefore represent an underestimate of the true delay.",
       caption="Data from ONS | Plot by @VictimOfMaths")

#Stacked area
data %>% 
  filter(name==LA & cause==plotcause) %>% 
  group_by(code, name, cause, week) %>% 
  mutate(newregs=case_when(
    regweek==week ~ deaths,
    regweek>min(regweek) ~ deaths-lag(deaths, 1, order_by=regweek),
    TRUE ~ 1)) %>% 
  filter(week>=16) %>% 
  ggplot()+
  geom_col(aes(x=week, y=newregs, fill=as.factor(regweek)))+
  scale_fill_viridis(discrete=TRUE, name="Week of registration", direction=-1)+
  scale_x_continuous(name="Week of death (occurrence)")+
  scale_y_continuous(name="Number of deaths")+
  theme_classic()+
  theme(plot.title=element_text(face="bold", size=rel(2)))+
  labs(title=paste0("Delays in deaths registrations in ", LA),
       subtitle=paste0("Week of occurrence for deaths from ", plotcause, " by week or registration.\nDeaths which occurred prior to week 16 (18th April) are excluded."),
       caption="Data from ONS | Plot by @VictimOfMaths")







