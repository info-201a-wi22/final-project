library(dplyr)
library(tidyr)


crime_data <- read_csv("../data/seattle_crime_data.csv")
incomebylocationdata <- read_csv("../data/income_by_location.csv")

#Crimes against category
crime_data_category <- crime_data %>%
  count(Crime.Against.Category)

#Most committed crime groups in 2019
crime_data$Year <- format(as.Date(crime_data$Offense.Start.DateTime, format="%d/%m/%Y"),"%Y")
most_crime_group_2019 <- crime_data %>%
  filter(Year == 2019) %>%
  group_by(Offense.Parent.Group) %>%
  count() %>%
  arrange(-n) 

#Least committed crime group in 2019
least_crime_group_2019 <- crime_data %>%
  filter(Year == 2019) %>%
  group_by(Offense.Parent.Group) %>%
  count() %>%
  arrange(n) 
  
#Census tract with the highest household income by race in 2019
highest_income_2019 <- incomebylocationdata %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == max(`Household Income by Race`)) %>%
  pull(Geography)

#Census tract with the lowest household income by race in 2019
lowest_income_2019 <- incomebylocationdata %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == min(`Household Income by Race`)) %>%
  pull(Geography)

