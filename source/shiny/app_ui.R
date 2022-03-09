library(shiny)
library(plotly)
library(shinythemes)

source("panels/intro_panel.R")
source("panels/crime_heatmap_panel.R")
source("panels/top_crimes_panel.R")
source("panels/crime_income_correlation_panel.R")
source("panels/summary_panel.R")
source("panels/conclusion_panel.R")
source("panels/report_panel.R")


ui <- navbarPage(
  theme = shinytheme("sandstone"),
  titlePanel(h1("Seattle Crime")),
  tags$style(
    "
    .navbar {min-height:100px !important;}
    "
  ),
  
  intro_panel,
  top_crimes_panel,
  crime_heatmap_panel,
  crime_income_correlation_panel,
  summary_panel,
  conclusion_panel,
  report_panel,
  
  footer = list(
    hr(),
    HTML("Final Deliverable | Info 201 | Winter 2022 | 
    Created by : Alexander Valentino Evans, Saranya Gores, Noah Adam Hellyer, Ryan Trieu"),
    hr()
  ),
)

