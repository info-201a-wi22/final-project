heatmap_sidebar_content <- sidebarPanel(
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

heatmap_main_content <- mainPanel(
  plotlyOutput("map")
)

crime_heatmap_panel <- tabPanel(
  "Crime Map",
  titlePanel("Crime Map Of Seattle"),
  sidebarLayout(
    heatmap_sidebar_content,
    heatmap_main_content
  )
)