library(dplyr)
library(tidyr)


crime_data <- read_csv("../data/seattle_crime_data.csv")
incomebylocationdata <- read_csv("../data/income_by_location.csv")

# Finds the total amount of crime for each crime category and filters the top 10.
count <- crime_data %>%
  count(Offense.Parent.Group) %>%
  top_n(10, n)

# Filters the crime_data to only show the top 10 crime data categories.
crime_data_top_10 <- crime_data %>%
  filter(Offense.Parent.Group %in% count$Offense.Parent.Group)

#Most committed crime groups in 2019
crime_data$Year <- format(as.Date(crime_data$Offense.Start.DateTime, format="%d/%m/%Y"),"%Y")
crime_group_2019 <- crime_data %>%
  filter(Year == 2019) %>%
  group_by(Offense.Parent.Group) %>%
  count() 
most_committed_crime_group_2019 <- crime_group_2019 %>%
  filter(n == max(n)) 
  

#Least committexd crime group in 2019
least_committed_crime_group_2019 <- crime_group_2019 %>%
  filter(n == min(n)) %>%
  pull(Offense.Parent.Group)
  
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
