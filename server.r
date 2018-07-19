# File: server.r
# Created by: Mickey Guo
# Server Function of the Sample Shiny App

function(input, output) {
  
  # Put a rendered plot in to the output
  # Name for it should match the plotlyOutput() in ui definition
  
  # Call renderPlotly on the real plotly object.
  output$pg1_plot_right <- renderPlotly(pg1_plot1)
  
}
