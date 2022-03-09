summary_panel <- tabPanel(
  "Summary", 
  titlePanel("Summary and Takeaways"),
  h3("Summary"),
  p("The below diagram was created by the New York Times to illustrate the
    increasing level of inequality in the US."),
  # An image `img()` to display. This content should have a `src` attribute of
  # "inequality.png" (which will refer to the file in the `www/` folder).
  img(src = "inequality.png"),
  h3("Takeaways"),
  p('Click on the "Growth Chart" tab to see an interactive diagram.')
)

