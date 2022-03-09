report_panel <- tabPanel(
  "Report",
  h2("1.0 Introduction"), 
  p("Crime is an issue that many people deeply care about. Crime influences important 
  issues such as our economy and political opinions. Crime rates can vary wildly 
  between different neighborhoods within a city. As an example, downtown Seattle 
  is known for having a higher rate of crime compared to the rest of the city. 
  Our area of research for this project intends to dive deeply into crime data and 
  understand trends that exist within that data. Additionally, we want to identify 
  what kinds of correlations we can draw with crime from other data such as income rates. 
  We will utilize two datasets containing crime and income data within Seattle neighborhoods 
  over the past decade. Our goal is to capture meaningful information that Seattle politicians 
  can utilize to make informed policy decisions that reduce crime in our city. We all would like 
  to make Seattle a safer place to live"),
  
  h2("2.0 Design Situation "),
  p("**Framing**: The topic of concern is crime in Seattle. There are multiple elements 
  making this topic, namely: crime types, crime rates, areas of crime, income. Moreover, 
  there are several questions to be asked about:
  - Does *income* have a causal relationship with *crime rates*?
  - What are the *factors* of a neighborhood in Seattle that affect *crime rate* in that area?
  - What are the most prominent *types of crime* in Seattle?
 **Human values**: Our project concerns with moral values categorized into these factors: 
 *Personal-sexual*, *Social Trust*, *Legal-illegal*, *Self-interest*, which are the moral 
 factors discussed in the article _MORAL VALUES, SOCIAL TRUST AND INEQUALITY: Can Values 
 Explain Crime?_ [^1] In this study, general measures of moral values and tolerances have 
 little to no relationships with the covariants of crime, but a sub-set of *Self-interest* 
 items offer some explanations. *Self-interest* values directly associates with crime rates 
 at national levels. Surprisingly, *Standard of Living* and *Social Trust* was not found to 
 be responsible for crime rates, rather, they offered to be conditions for the variance of 
 crime in difference settings.

 **Stakeholders**: Our project is open to the public, therefore citizens, politicians, journalists, 
 law practitioners get access to our data. These individuals then can help influence the policies 
 and laws to make people' lives safer. Internally, the criminal justice system includes those who 
 are responsible for enforcing and interpreting the law. Internal stakeholders of the criminal 
 justice system could potentially include persons who are suspected of crimes and convicted. 
 Externally, the media, groups that serve victims of crime, families, businesses, school and 
 society can be impacted. [^3] People who consume media that use our project's
 data can be influenced by the media' narratives. Similarly, people who are influenced by 
 the politicians' and law practitioners' interpretations of our data can have a different 
 viewpoint about these crimes and the elements surrounding them.

 **Benefits and Harms**: In general, since these data about crimes are unbiased,
 the public are expected to have an objective and more comprehensive view of the crimes, 
 the income, and the direct stakeholders. Law enforcement can better make a case to acquire 
 these resources needed to fight crime. [^2] Crime-fighting problems can be addressed to find 
 solutions.
 On the other hand, direct stakeholders can misinterpret the data in order to spread mis/disinformation 
 for unethical/selfish motives. Insufficient data could also cause data errors that shape the results 
 in unintentional ways. Moreover, social media can have a bias view of this data, representing a false 
 narrative of crime data. This following figure shows the difference between frequencies of different 
 types of crimes against crime-related tweets. [^4]"),
  
  h2("3.0 Research Questions"),
  p("Our questions revolve around identifying trends in crime rates within Seattle. The questions that we want to explore are:
 - What _types_ of crime are the most common in Seattle?
 - How have the crime rates _changed_ over the decade?
 - How does the crime rate _differ_ between neighborhoods within Seattle?
 - What _areas_ of Seattle have the highest crime rates?
 - What is the _relationship_ between income and crime rates in Seattle?  

We will address these questions by creating visualizations of crime rates over the different neighborhoods within the city. The answer to these questions will help us understand whether crime in Seattle is improving or getting worse. We can compare trends within different neighborhoods to identify which neighborhoods handle crime better than others. We want to see if a correlation exists between crime rates and income rates within Seattle."),
  
  h2("4.0 The Dataset"),
  p("The datasets that we chose to analyze are crime data in Seattle that ranges from 2008 to present and then data about Seattle's household income that has average household income by location from 2013 to 2019.
### Data set size and complexity
The data consists of 2 csv files with the crime data having 950,000 observations and 17 columns and the income data having 915 observations and 8 columns.
### Data Provenance
For both data sets the data being represented is based off of the population in King County for a given year. Observations in the crime data set are represented by a report number and broken down into the time the crime took place, location, and offense. The observations of the income data are broken down into year, average household income, and location. The crime data was collected and maintained by Seattle Police Department until May 2019 when the preservation and upkeep of the data moved to the National Incident-Based Reporting System (NIBRS). The main purpose of this data is to obviously keep track of crimes in Seattle for keeping records but also beneficial to understand more about crime in Seattle when it is represented in such a large dataset. This data benefits the people of Seattle and the United States as a whole because it represents how crime has evolved and changed in the last 14 years and allows us to determine if we are making a meaningful difference at combating crime and if not where we can improve. The income by location data we found is presented by DATAUSA but originated from the U.S. Ce nsus Bureau. The purpose of the income by location dataset is to understand how Seattle's income has evolved over the years and also to compare different parts of Seattle. The data alone doesn't necessarily benefit anyone in particular but is useful to understand the trend of our economy and shows how certain areas of Seattle are more expensive than others. Overall both of these datasets should be considered credible and trustworthy because they originate from government agencies.
"),
  
  h2("5.0 Findings"),
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
  property and this is present from 2013-2019.
"),
  
  h2("6.0 Discussion"), 
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
  
  h2("7.0 Conclusion"),  
  p("All in all, our project is very important to the city of Seattle. Our data can be very helpful to many different
  people, whether it be to people in important settings like technologists, 
  designers, policymaker or just to people visiting or looking to live in 
  Seattle. It allows people to make choices to be in certain areas and how 
  cautious you need to be when going to a specific location within Seattle.
  Also, crime is a major thing that should be talked about in any big city
  in any state. Big cities like Seattle suffer from criminal activity and projects like these is where we start to see change.
")
)