build_crime_income_correlation_chart <- function(crime_data, income_data, correlation_year, correlation_category) {
  # group data by 1km^2 segments grouping by latitude and longitude
  crime_data_by_category <- crime_data %>%
    filter(year == correlation_year) %>%
    group_by(longitude, latitude, category) %>%
    summarize(crimes_per_km = n())
  
  # filter the crime data to two categories and rename person crime to violent crime.
  crime_category_income_data <- income_data %>%
    filter(year == correlation_year) %>%
    inner_join(crime_data_by_category, by = c("longitude", "latitude")) %>%
    filter(category == correlation_category)
  
  # plot the graph with groups
  correlation_plot <- ggplot(crime_category_income_data, aes(x = median_income, y = crimes_per_km, color = category)) +
    geom_point() +
    scale_y_continuous(trans = 'log10') +
    ggtitle(paste("Crimes Density vs. Median Income in Seattle", correlation_year)) +
    xlab("Median Income") +
    ylab("Crimes per Km^2") +
    geom_smooth() +
    theme(
      plot.title = element_text(hjust = 0.5, size = 14)
    )
  
  return(correlation_plot)
}