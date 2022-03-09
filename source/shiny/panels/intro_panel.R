intro_panel <- tabPanel(
  "Introduction",
  #h2("Introduction to Seattle Crime"),
  sidebarLayout(
    sidebarPanel(
      h3("Why Crime in Seattle?"),
      p("Crime is an issue that many people deeply care about. Crime influences 
        important issues such as our economy and political opinions. Crime rates
        can vary wildly between different neighborhoods within a city. As an 
        example, downtown Seattle is known for having a higher rate of crime 
        compared to the rest of the city. Our area of research for this project 
        intends to dive deeply into crime data and understand trends that exist 
        within that data."), 
      p("Additionally, we want to identify what kinds of correlations we can 
        draw with crime from other data such as income rates. We will utilize 
        two datasets containing crime and income data within Seattle 
        neighborhoods over the past decade. Our goal is to capture meaningful 
        information that Seattle politicians can utilize to make informed policy 
        decisions that reduce crime in our city. We all would like to make 
        Seattle a safer place to live."),
      h3("Questions to Consider"),
      p("Our questions are mainly based around finding trends in Seattle crime
        rates. The questions we are looking to explore are:"),
      p("- What types of crime are the most common in Seattle?"),
      p("- How have the crime rates changed over the decade?"),
      p("- How does the crime rate differ between neighborhoods within Seattle?"),
      p("- What areas of Seattle have the highest crime rates?"),
      p("- What is the relationship between income and crime rates in Seattle?"),
      p("We will address these questions by creating interactive visualizations
        of crime rates over the different neighborhoods within the city. The 
        answer to these questions will help us understand whether crime in 
        Seattle is improving or getting worse. We can compare trends within 
        different neighborhoods to identify which neighborhoods handle crime 
        better than others. We want to see if a correlation exists between crime
        rates and income rates within Seattle."),
      h3("About Us"),
      p(strong("Authors:"), "Alexander Valentino Evans, Saranya Gores, Noah Adam Hellyer, Ryan Trieu"),
      p(strong("Affiliation:"), "Info-201: Technical Foundations of Informatics"),
      p("The Information School, University of Washington"),
      p("Winter 2022")
    ),
    mainPanel(
      img(src = "https://media.istockphoto.com/photos/crime-scene-tape-barrier-in-front-of-defocused-background-picture-id1059636358?b=1&k=20&m=1059636358&s=170667a&w=0&h=mEOjYC7gRPZ4IyEm2kPxtbLy3S0k8l0SPfTvRwYoU0E=",
          width = "95%", height = "95%"),
      p(""),
      p(""),
      img(src = "https://3gz8cg829c.execute-api.us-west-2.amazonaws.com/prod/image-renderer/16x9/full/1015/center/80/a0bf4f66-18b9-4b3f-91cb-1402b7ac4fdd-large16x9_downtownSea.jpeg",
          width = "95%", height = "95%"),
    )
  )
)