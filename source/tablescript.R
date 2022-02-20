library(dplyr)
library(tidyr)
library(tidyverse)
library(data.table)


crime_data <- read_csv("../data/seattle_crime_data.csv")
incomebylocationdata <- read_csv("../data/income_by_location.csv")

crime_data_table <- crime_data %>%
  mutate(Year =  format(as.Date(crime_data$Offense.Start.DateTime, format="%d/%m/%Y"),"%Y")) %>%
  select(Year,Offense.Parent.Group,Crime.Against.Category,Offense,MCPP) %>%
  setnames(old = c('Year','Offense.Parent.Group','Crime.Against.Category','Offense','MCPP'), new = c('year','crime_group','crime_against','crime','MCPP')) %>%
  filter(MCPP == "UNIVERSITY") %>%
  filter(year == "2019") %>%
  group_by(crime) %>%
  count()
  
  


