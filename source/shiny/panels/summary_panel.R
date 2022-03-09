summary_panel <- tabPanel(
  "Summary", 
  #titlePanel("Summary and Takeaways"),
  sidebarLayout(
    sidebarPanel(
  h2("Summary"),
  p("Whatever category of crime you look at, the same districts in Seattle have the most crime. 
  In most categories of crime, downtown districts experience more crime than other districts.
  In the last six years, there have been no significant changes in the distribution of most crime categories. 
  Crime rates have increased in all categories over the same time period. 
  Almost all types of crime are becoming more concentrated in high-crime areas. 
  Property crime is a notable outlier where income actually correlates positively with crime in areas with a median income of $80,000 to $100,000. 
  Societal crimes exhibit sharp correlative bands of negative correlation between income levels. 
  Crimes against people have the strongest inverse relationship with income. Despite the fact that all categories of crime show roughly an order of magnitude less crime with an order of magnitude more income. 
  Crimes against people show a steep decline, with approximately a 15x reduction in crime for every 10x increase in income. 
  While drug crime is still prevalent in Belltown, it has increased noticeably in Pioneer Square. 
  Surprisingly, the number of theft and robbery incidents has not increased or decreased significantly over the last six years."),
  hr(),
  h2("Takeaways"),
  p(strong("1: Across all categories, occurrences of crime has gone up within the same time period (2013-2019).")),
  p(strong("2: Downtown districts (Belltown, Pioneer Square, Sodo, and South Lake Union) all have higher crime rates than other districts in most categories. ")),
  p(strong("3: Crime rates versus income has a negative correlations")),
  hr(),
  ),
  
  mainPanel(
    img(src = "https://s.hdnux.com/photos/01/16/11/02/20484271/3/1200x0.jpg",
        width = "95%", height = "95%")
  ),
)
)


  
