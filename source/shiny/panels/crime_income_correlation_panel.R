crime_income_correlation_panel <- tabPanel(
  "Income and Crime Rate",
  titlePanel("Income and Crime Rate"),
  sidebarLayout(
    sidebarPanel(
      p("This graph plots crime rate against income for a particular category of crime 
        to see if crime and income are correlated with one another."),
      p("Each datapoint on the graph is an area of 1km^2 within Seattle."),
      p("Select a category of crime and see how it correlates with income over time."),
      selectInput(
        "correlation_category",
        label = "Crime Category:",
        choices = list(
          "Person" = "PERSON",
          "Property" = "PROPERTY",
          "Society" = "SOCIETY"
        ),
        selected = "Person"
      ),
      sliderInput("correlation_year",
                  "Year:",
                  min = 2013,
                  max = 2019,
                  value = 2019
      ),
      p("According to the", 
        a("National Incident-Based Reporting System", href="https://ucr.fbi.gov/nibrs/2012/resources/crimes-against-persons-property-and-society#:~:text=Crimes%20Against%20Society%2C%20e.g.%2C%20gambling,property%20is%20not%20the%20object.")),
      tags$ul(
        tags$li("Crimes against persons are those whose victims are always individuals. 
                (e.g. murder, rape, and assault)"), 
        tags$li("Crimes against propety is crime with intent to obtain money, property, 
                or some other benefit (e.g. robbery, bribery, and burglary"), 
        tags$li("Crimes against society represent society's prohibition against engaging 
        in certain types of activity; they are typically victimless crimes in which
        property is not the object. (e.g. gambling, prostitution, and drug violations).")
      ),
    ),
    mainPanel(
      plotlyOutput("correlation_chart"),
      h3("Generally speaking, do crime and income correlate?"),
      p("Broadly speaking: income negatively correlates with crime rate for a given area in Seattle."),
      p("This trend is relatively constant across all categories and all income levels."),
      p("Property crime is the notable outlier where income actually positive correlates 
        with crime for areas with a median income between $80,000 and $100,000"),
      p("Societal crimes show stark correlative bands of negative correlation between different income bands.
        (Income levels between $80,000 and $100,000 have a stronger negative correlation than $100,000 and $200,000)"),
      h3("What category of crime shows the strongest correlation with income?"),
      p("Crimes against persons (generally violent crime) show the strongest negative correlation with income."),
      p("Although all categories of crime show roughly a single order of 
        magnitude less crime with a single order of magnitude more income. 
        (e.g. a 10x increase in median income from $20,000 to $200,000 between two areas generally shows a 10x reduction in crime)"),
      p("Crimes against persons show a steep decline of roughly 15x reduction in crime for a 10x increase in income.")
    )
  )
)
