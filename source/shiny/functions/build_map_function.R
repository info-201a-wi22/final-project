build_map_function <- function(crime_data, map_year, map_offense) {
  # filter crimes down to given year and offense
  crime_data_map <- crime_data %>%
    filter(year == map_year) %>%
    filter(offense == map_offense)
  
  # plot the crime heatmap
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
                   size = 1,
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