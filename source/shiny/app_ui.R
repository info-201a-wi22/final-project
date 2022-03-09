library(shiny)
library(plotly)
library(shinythemes)

source("panels/intro_panel.R")
source("panels/crime_heatmap_panel.R")
source("panels/top_crimes_panel.R")
source("panels/crime_income_correlation_panel.R")
source("panels/summary_panel.R")
source("panels/report_panel.R")

ui <- navbarPage(
  theme = shinytheme("sandstone"),
  #theme = "style.css",
  titlePanel(h1("Seattle Crime")),
  tags$style(
    "li a {
        font-size: 100px;
        font-weight: bold;
    }
    .navbar{ background-color: #222526;}
    .navbar {min-height:100px !important;}
    "
  ),
  intro_panel,
  top_crimes_panel,
  crime_heatmap_panel,
  crime_income_correlation_panel,
  summary_panel,
  report_panel,
)

