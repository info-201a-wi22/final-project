library(tidyverse)
library(ggplot2)
library(ggExtra)

# load crimes dataset
crime_data <- read.csv("data/seattle_crime_data.csv")

# extract latitude, longitude, catgegory, and offense from crime data
# filter to just crimes in 2019. Remove non-crimes.
crime_data_allup <- crime_data %>%
  mutate(year = str_extract(Report.Number, "^[0-9]{4}")) %>%
  filter(year == '2019') %>%
  summarize(category = Crime.Against.Category, 
            offense = Offense.Parent.Group, 
            longitude = round(Longitude, 2), 
            latitude = round(Latitude, 2)) %>%
  filter(category != 'NOT_A_CRIME') %>%
  group_by(longitude, latitude) %>%
  summarize(crimes = n())

# filter the census data table for the 'GEO_ID_BLK' to keep only first 11 digits
# and round up the latitude and longtitude to be 2 decimal places
census_data <- read.csv("data/2020_Census_Blocks_for_King_County___blocks20_area.csv")
location_data <- census_data %>% 
  summarize(geoloc = str_extract(GEO_ID_BLK, "^[0-9]{11}"), 
            longitude = round(INTPTLON20, 2), 
            latitude = round(INTPTLAT20, 2))

# load income data
income_data <- read.csv("data/income_by_location.csv")

# identify the income data by filtering to work only on year '2019'
# and using 'str_extract()' to get the ID.Geography for only 11 digits
income_data <- income_data %>% 
  filter(Year == '2019') %>%
  mutate(geoloc = str_extract(ID.Geography, "[0-9]{11}$")) %>%
  summarize(income = Household.Income.by.Race, geoloc) %>%
  inner_join(location_data, by = "geoloc") %>%
  group_by(longitude, latitude, geoloc) %>%
  summarize(median_income = median(income))

# group data by 1km^2 segments grouping by latitude and longitude
crime_data_by_category <- crime_data %>%
  mutate(year = str_extract(Report.Number, "^[0-9]{4}")) %>%
  filter(year == '2019') %>%
  summarize(category = Crime.Against.Category, 
            offense = Offense.Parent.Group, 
            longitude = round(Longitude, 2), 
            latitude = round(Latitude, 2)) %>%
  filter(category != 'NOT_A_CRIME') %>%
  group_by(longitude, latitude, category) %>%
  summarize(crimes_per_km = n())

# filter the crime data to two categories and rename person crime to violent crime.
crime_category_income_data <- income_data %>%
  inner_join(crime_data_by_category, by = c("longitude", "latitude")) %>%
  filter(category == 'PROPERTY' | category == 'PERSON') %>%
  mutate(category = str_replace(category, 'PERSON', 'VIOLENT'))

# plot the graph with groups
p <- ggplot(crime_category_income_data, aes(x = crimes_per_km, y = median_income, color = category)) +
  geom_point() +
  scale_x_continuous(trans = 'log10') +
  labs(title = "Crimes Density vs. Median Income in Seattle 2019") +
  geom_smooth() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 14)
  )

# Plot the scatter plot with marginal histograms
ggMarginal(p, groupColour = TRUE, groupFill = TRUE)
