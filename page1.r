# File: page1.r
# Created by: Mickey Guo
# Page1 content and layout of the Sample Shiny App


# Plot UI Definition ------------------------------------------------------

(pg1_plot1 <- flights %>% 
  filter(carrier == "DL", month == 7) %>% 
  plot_ly(x = ~air_time, y = ~distance, type = "scatter", color = ~origin))


# Page UI Definition ------------------------------------------------------
# The name in the plotlyOutput call does not reference to the plotly object,
#   and only the shiny server will look for this name in the server.r file.

# Images should be in the 'www' folder, and is only compatible with runApp().

uiPage1 <- tabPanel("Page 1",
                    verticalLayout(
                      fluidRow(
                        column(4, 
                               h1("Hello"), 
                               h2("It's me"),
                               p("I was wondering if after all these years you'd like to Shiny and Plotly")),
                        column(8, 
                               h2("Delta Flights From New York in July 2013"),
                               plotlyOutput("pg1_plot_right"))),
                      tags$hr(),
                      fluidRow(column(4, h2("Images"), p("This is a fluidRow. The text is 4 blocks while the penguin next door is 8 blocks wide. ")), 
                               column(8, img(src = "Tux.png")))))