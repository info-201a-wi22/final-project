conclusion_panel <- tabPanel(
  "Conclusion",
  sidebarLayout(
    sidebarPanel(
      
      h3("Findings"),
      p("With the data shown in our visualizations, there are many important findings 
  that we can use to answer our questions and create new inferences. We can see 
  from the crime map that downtown Seattle has the most criminal activity amongst 
  all the top 10 crime groups in Seattle, which is shown in the 'Top Crimes' tab 
  and answers our research question of 'What areas of Seattle have the highest 
  crime rates?'. This is not very surprising information because these numbers 
  are spiked due to many factors like high homeless levels, higher gang activity, 
  higher poverty rates, and/or more growing population. If we also take a look 
  at the 'Income and Crime Rate' tab, we can see that crime is clearly closely 
  related with income, no matter the category of crime. When there is an increase 
  in income, there is almost an equal decrease in crime, which answers our other 
  research question of 'What is the relationship between income and crime rates 
  in Seattle?'. We can use the 'Top Crime' tab to answer our question about 
  'What types of crimes are the most common in Seattle?'. Larceny-Theft is and 
  has been a big problem in Seattle. We can see this from the 'Top Crime' tab, 
  as Larceny-Theft is by far the largest crime group, with over 200,000 crimes from
  the years 2013-2019. The other most common crimes, but a lot less common than 
  Larceny-Theft are Assault Offenses coming at over 8,000 crimes from 2013-2019 
  and Burglary/Breaking & Entering at over 7,000 cases from 2013-2019. All of the 
  other cases have below 6,000 cases from 2013-2019. With our data, we can make 
  an inference about our question 'How have the crime rates changed over the decade?'
  by looking at our 'Crime Map' and our 'Top Crimes' tab to see the rate of crime 
  in a specific area and what the crime might be. Even from 2013-2019, we can make
  valuable inferences by looking at the trends in the numbers. The question 'How 
  does the crime rate differ between neighborhoods?' can be inferred from our 
  'Income and Crime Rate' tab, by looking at the median income and translating 
  that to specific neighborhoods in Seattle. The higher income neighborhoods will
  have the least crimes to person and society, but will have an increased rate on 
  property and this is present from 2013-2019."),
      
      h3("Discussion"), 
      p("Answering the research questions will create implications for a lot of important 
    settings. Our findings would allow many different people in different settings 
    to make implications by being the main source to support the answers to our 
    research questions. People who are Technologists, designers and policymakers 
    could make many implications based on our research question answers. Technologists 
    finding a way to use more advanced technology to lower crime rates would be 
    very effective and has been very effective for other big cities in the United 
    States and even in places like Europe, such as Amsterdam which is the capital 
    of the Netherlands and one of the safest places in the world and spend a lot 
    of money on the technology to fight crime. A designer creating a better built 
    environment with better takes on zoning, designs of streets and housing, locations 
    of public transit, and land uses would shape the built environment in ways that 
    could possibly reduce crime. A policymaker could help lower crime rates by 
    creating more incentives for people who need treatment or vocational programs 
    in prison so when they get out they have something to look forward to when they 
    get out of jail instead of doing more criminal acts that will get them back 
    in jail, which is something that tends to happen in a lot of cases. Even people 
    who are just another person living in the community of Seattle could also use 
    this information when it comes to where they decide to buy a house or where 
    someone might choose to visit within Seattle to keep them away from having a 
    criminal act done on them. People could use the data and the information from 
    this project to protect any valuables they may have and decide when and where 
    they should have specific items so they won't get stolen by robbery or burglary. 
    This could also just be used to be more alert when it comes to coming across 
    a part of Seattle that may receive higher crime rates or has had high crime 
    rates in the past. There are so many different ways this information could be 
    used to make some very important decisions and could be used to tackle Seattle's 
    crime problems, but these are ways that could be the most effective and might 
    show an immediate impact in the decrease of criminal activity."),
      
      
      h3("Conclusion"),
      p("All in all, our project is very important to the city of Seattle. 
  Our data can be very helpful to many different
  people, whether it be to people in important settings like technologists, 
  designers, policymaker or just to people visiting or looking to live in 
  Seattle. It allows people to make choices to be in certain areas and how 
  cautious you need to be when going to a specific location within Seattle.
  Also, crime is a major thing that should be talked about in any big city
  in any state. Big cities like Seattle suffer from criminal activity and projects 
  like these is where we start to see change.")
  ),
  
    mainPanel(
        img(src = "https://momentummag.com/wp-content/uploads/2015/11/14634898052_447d10a07c_o.jpg",
            width = "95%", height = "95%"),
        p(),
        img(src = "https://mynorthwest.com/wp-content/uploads/2020/01/downtown-seattle-sdot-flickr-620x370.jpg",
            width = "95%", height = "95%"),
        p(),
        img(src = "https://crosscut.com/sites/default/files/styles/max_992x992/public/images/articles/gettyimages-1195361131_web_0.jpg?itok=cRfcBRdZ",
            width = "95%", height = "95%"),
        p(),
        img(src = "https://thehill.com/sites/default/files/styles/article_full/public/seattlepolice_053020getty.jpg?itok=OBIdmI2A",
            width = "95%", height = "95%"),
        
    )
  )
)
    