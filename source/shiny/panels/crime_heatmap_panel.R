heatmap_sidebar_content <- sidebarPanel(
  p("Occurences of crime throughout the city are not evenly distributed."),
  p("This heatmap shows the distribution of crimes throughout the city based on category and year"),
  p("Select a particular crime offense and use the slider to see how the crime distribution changes from year to year."),
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
    ),
    selected = "Theft"
  ),
  sliderInput("map_year",
              "Year:",
              min = 2013,
              max = 2019,
              value = 2019,
              sep = ""
  )
)

heatmap_main_content <- mainPanel(
  plotlyOutput("map"),
  hr(),
  h3("What areas of Seattle experience the most crime?"),
  p("No matter what category of crime you look at, the same districs within Seattle experience the most crime.
     Downtown dsitricts (Belltown, Pioneer Square, Sodo, and South Lake Union) all experience more crime compared to other districts across most categories of crime."),
  p("Interstingly, burglary has hotspots within University District and Ballard in addition to the downtown districts."),
  p("Motor vehicle theft is distributed fairly evenly across the entire city."),
  hr(),
  h3("How has the crime topogrophy changed in the past 6 years?"),
  p("Most crime categories do not see significant changes of distribution in the past 6 years. 
    However, across all categories, occurrences of crime his gone up within the same time period."),
  p("Nearly all categories of crimes see more centralization towards the districts of most crime (downtown). Trespassing shows these trends the most clearly."),
  p("Drug crimes, while still mostly prevalent in Belltown, have noticeably increased in Pioneer Square"),
  p("Surprisngly, theft and robbery occurrences have neither increased or decreased significantly in the past 6 years.")
)

crime_heatmap_panel <- tabPanel(
  "Crime Map",
  titlePanel("Crime Map Of Seattle"),
  sidebarLayout(
    heatmap_sidebar_content,
    heatmap_main_content
  )
)
