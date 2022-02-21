library(dplyr)
library(tidyr)
library(tidyverse)

crime_data <- read_csv("../data/seattle_crime_data.csv")
income_by_location_data <- read_csv("../data/income_by_location.csv")

crime_data_counts <- crime_data %>%
  mutate(year = format(as.Date(crime_data$Offense.Start.DateTime, format="%d/%m/%Y"),"%Y")) %>%
  filter(year == 2019) %>%
  group_by(Offense.Parent.Group) %>%
  count() %>%
  arrange(desc(n))

# Top 10 most committed crime groups in 2019
crime_data_top_10 <- crime_data_counts %>%
  head(10) %>%
  rename("Number of Crimes" = n, "Crime" = Offense.Parent.Group)

# Most committed crime in 2019
most_committed_crime_group_2019 <- crime_data_counts %>%
  filter(n == max(crime_data_counts$n)) %>%
  pull(Offense.Parent.Group)

# Least committed crime in 2019
least_committed_crime_group_2019 <- crime_data_counts %>%
  filter(n == min(crime_data_counts$n)) %>%
  pull(Offense.Parent.Group)

# Location with highest income in Seattle 2019
highest_income_location_2019 <- income_by_location_data %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == max(`Household Income by Race`)) %>%
  pull(Geography)

# Highest income in Seattle 2019
highest_income_2019 <- income_by_location_data %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == max(`Household Income by Race`)) %>%
  pull(`Household Income by Race`)

# Location with lowest income in Seattle 2019
lowest_income_location_2019 <- income_by_location_data %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == min(`Household Income by Race`)) %>%
  pull(Geography)

# Lowest income in Seattle 2019
lowest_income_2019 <- income_by_location_data %>%
  filter(Year == 2019) %>%
  filter(`Household Income by Race` == min(`Household Income by Race`)) %>%
  pull(`Household Income by Race`)
