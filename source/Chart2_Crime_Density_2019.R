library(tidyverse)
library(ggplot2)
library(ggmap)

# load crimes dataset
crime_data <- read.csv("../data/seattle_crime_data.csv")

# extract latitude, longitude, catgegory, and offense from crime data
# filter to just crimes in 2019. Remove non-crimes.
crime_data_map <- crime_data %>%
  mutate(year = str_extract(Report.Number, "^[0-9]{4}")) %>%
  filter(year == '2019') %>%
  filter(Crime.Against.Category != 'NOT_A_CRIME') %>%
  summarize(longitude = Longitude, 
            latitude = Latitude,
            category = Crime.Against.Category, 
            offense = Offense.Parent.Group) %>%
  filter(longitude != 0 & latitude != 0)

## plot the crime heatmap
base_plot <- qmplot(
  data = crime_data_map,               
  x = longitude,                     
  y = latitude,                      
  geom = "blank",               
  maptype = "toner-background", 
  darken = 0,                  
)

crime_heat_map <- base_plot + 
  stat_density2d(data = crime_data_map,
                 aes(x = longitude, y = latitude, fill = ..level.., alpha = ..level..),
                 size = 2,
                 bins = 20,
                 alpha = 0.4,
                 geom = "polygon") +
  scale_fill_gradient2("# of Crimes",
                      low = "white",
                      mid = "yellow",
                      high = "red") + 
  ggtitle("Crime Density in Seattle 2019")

crime_heat_map
