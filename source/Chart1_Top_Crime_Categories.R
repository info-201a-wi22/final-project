library(ggplot2)
library(scales)
library(tidyverse)

# Reads the crime_data from the data folder.
crime_data <- read.csv("data//seattle_crime_data.csv")

# Finds the total amount of crime for each crime category and filters the top 10.
count <- crime_data %>%
  count(Offense.Parent.Group) %>%
  top_n(10, n)

# Filters the crime_data to only show the top 10 crime data categories.
crime_data_top_10 <- crime_data %>%
  filter(Offense.Parent.Group %in% count$Offense.Parent.Group)

# Creates a bar chart for the top 10 crime categories and displays the amount of 
# crime for a given category from the years 2013-2019. 
crime_plot <- crime_data_top_10 %>%
  ggplot(aes(x = Offense.Parent.Group)) +
  geom_bar() +
  ggtitle("Top 10 Crime Groups") +
  labs(y = "Number of Crime's", x = "Crime Categories") + 
  coord_flip()
crime_plot +
  scale_y_continuous(labels = comma)

