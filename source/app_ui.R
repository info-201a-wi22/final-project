library(shiny)
library(plotly)
library(shinythemes)

tab_panel_intro <- tabPanel(
  "Introduction",
  h2("Introduction")
)

map_sidebar_content <- sidebarPanel(
  selectInput(
    "map_offense",
    label = "Offense:",
    choices = list(
      "Theft" = "LARCENY-THEFT",
      "Assault" = "ASSAULT OFFENSES",
      "Burglary" = "BURGLARY/BREAKING&ENTERING",
      "Vandalism" = "DESTRUCTION/DAMAGE/VANDALISM OF PROPERTY",
      "Motor Vehicle Theft" = "MOTOR VEHICLE THEFT",
      "Fraud" = "FRAUD OFFENSES",
      "Trespassing" = "TRESPASS OF REAL PROPERTY",
      "Drugs" = "DRUG/NARCOTIC OFFENSES",
      "Robbery" = "ROBBERY",
      "DUI" = "DRIVING UNDER THE INFLUENCE"
    )
  ),
  sliderInput("map_year",
              "Year:",
              min = 2013,
              max = 2019,
              value = 2019
  )
)

map_main_content <- mainPanel(
  plotlyOutput("map")
)

map_panel <- tabPanel(
  "Crime Map",
  titlePanel("Crime Map Of Seattle"),
  sidebarLayout(
    map_sidebar_content,
    map_main_content
  )
)

tab_2_panel <- tabPanel(
  "Income and Crime Rate",
  titlePanel("Data Visualization 2")
)

tab_3_panel <- tabPanel(
  "Data Visualization 3",
  titlePanel("Data Visualization 3")
)

summary_panel <- tabPanel(
  "Summary", 
  titlePanel("Summary and Takeaways")
)

report_panel <- tabPanel(
  "Conclusion", 
  titlePanel("Conclusion")
)


ui <- navbarPage(
  theme = shinytheme("superhero"),
  "Seattle Crime",
  tab_panel_intro,
  map_panel,
  tab_2_panel,
  tab_3_panel,
  summary_panel,
  report_panel
)