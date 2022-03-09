library(tidyverse)
library(ggmap)
library(ggplot2)
library(maps)
library(mapproj)
library(shiny)
library(scales)

# load crimes dataset
crime_data <- read.csv("../../data/seattle_crime_data.csv") %>%
  mutate(year = str_extract(Report.Number, "^[0-9]{4}")) %>%
  filter(Crime.Against.Category != 'NOT_A_CRIME') %>%
  filter(Longitude != 0 & Latitude != 0) %>%
  filter(year >= 2013 & year <= 2021) %>%
  summarize(
    year,
    longitude = round(Longitude, 2), 
    latitude = round(Latitude, 2),
    category = Crime.Against.Category, 
    offense = Offense.Parent.Group
  )

# filter the census data table for the 'GEO_ID_BLK' to keep only first 11 digits
# and round up the latitude and longitude to be 2 decimal places
census_data <- read.csv("../../data/2020_Census_Blocks_for_King_County___blocks20_area.csv") %>% 
  summarize(geoloc = str_extract(GEO_ID_BLK, "^[0-9]{11}"), 
            longitude = round(INTPTLON20, 2), 
            latitude = round(INTPTLAT20, 2))

# extract only 11 digits from the geolocation ID so that the data is joinable.
income_data <- read.csv("../../data/income_by_location.csv") %>% 
  #filter(Year == '2019') %>%
  mutate(geoloc = str_extract(ID.Geography, "[0-9]{11}$")) %>%
  summarize(income = Household.Income.by.Race, geoloc, year = Year) %>%
  inner_join(census_data, by = "geoloc") %>%
  group_by(longitude, latitude, geoloc, year) %>%
  summarize(median_income = median(income))

source("functions/build_top_categories_chart.R")
source("functions/build_map_function.R")
source("functions/build_crime_income_correlation_chart.R")



# server
server <- function(input, output) {
  output$map <- renderPlotly({ 
    return(build_map_function(crime_data, input$map_year, input$map_offense))
  })
  
  output$correlation_chart <- renderPlotly({ 
    return(build_crime_income_correlation_chart(crime_data, income_data, input$correlation_year, input$correlation_category))
  })
  
  output$crime_plot <- renderPlotly({ 
    return(build_top_categories_chart(crime_data, input$chart_year))
  })
}
