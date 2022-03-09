build_top_categories_chart <- function(crime_data, chart_year) {
  count <- crime_data %>%
    count(offense) %>%
    top_n(10, n)
  
  # Filters the crime_data to only show the top 10 crime data categories.
  crime_data_top_10 <- crime_data %>%
    filter(offense %in% count$offense) %>%
    filter(year == chart_year)
  
  # Creates a bar chart for the top 10 crime categories and displays the amount of 
  # crime for a given category from the years 2013-2019. 
  crime_plot <- crime_data_top_10 %>%
    ggplot(aes(x = offense)) +
    geom_bar() +
    ggtitle("Top 10 Crime Groups") +
    labs(y = "Number of Crimes", x = "Crime Categories") + 
    coord_flip() + 
    scale_y_continuous(labels = comma)
  
  return(crime_plot)
}