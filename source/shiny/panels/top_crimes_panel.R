top_crimes_sidebar_content <- sidebarPanel(
  p("Select a given year to see the change in the distribution of the top 10
    crimes in King County."),
  sliderInput("chart_year",
              "Year:",
              min = 2013,
              max = 2019,
              value = 2019,
              sep = ""
  )
)

top_crimes_main_content <- mainPanel(
  plotlyOutput("crime_plot"),
  hr(),
  h3("Purpose of Crime Chart"),
  p("This chart represents the number of crimes in King County and displays the 10 
    biggest categories for each type of crime. The purpose of this graph is to get a 
    better understanding of what type of crimes happen the most in the greater Seattle area."),
  hr(),
  h3("Notable Observations"),
  p("I think one of the most interesting observations that can be concluded from
    this data is comparing Assuault Offenses from 2013 to 2019. Overall crime increased
    but Assuault Offenses was one of the largest increases with a difference of 2,426
    from 2013 to 2019. Another notable observation is Trespassing on Property over 
    tripled from 2013 to 2019. Overall I think understanding how King County has 
    changed overtime in regard to crime offenses is useful because it allows us as 
    a community to understand where we can improve and work to uplift the people 
    around us to limit crime.")
)


top_crimes_panel <- tabPanel(
  "Top Crimes",
  titlePanel("Data Visualization 2"),
  sidebarLayout(top_crimes_sidebar_content,
                top_crimes_main_content)
)