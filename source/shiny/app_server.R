library(tidyverse)
library(ggmap)
library(ggplot2)
library(maps)
library(mapproj)
library(shiny)

# load crimes dataset
crime_data <- read.csv("../../data/seattle_crime_data.csv") %>%
  mutate(year = str_extract(Report.Number, "^[0-9]{4}")) %>%
  filter(Crime.Against.Category != 'NOT_A_CRIME') %>%
  filter(Longitude != 0 & Latitude != 0) %>%
  filter(year >= 2013 & year <= 2021) %>%
  summarize(
    year,
    longitude = Longitude, 
    latitude = Latitude,
    category = Crime.Against.Category, 
    offense = Offense.Parent.Group
  )

build_map_function <- function(crime_data, map_year, map_offense) {
  
  # extract latitude, longitude, catgegory, and offense from crime data
  # filter to just crimes in 2019. Remove non-crimes.
  crime_data_map <- crime_data %>%
    filter(year == map_year) %>%
    filter(offense == map_offense)
  
  ## plot the crime heatmap
  base_plot <- qmplot(
    data = crime_data_map,               
    x = longitude,                     
    y = latitude,                      
    geom = "blank",               
    maptype = "toner-lite", 
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
    ggtitle(paste("Crime Density in Seattle", map_year))

  return(crime_heat_map)
}

# server
server <- function(input, output) {
  output$map <- renderPlotly({ 
    return(build_map_function(crime_data, input$map_year, input$map_offense))
  })
}
