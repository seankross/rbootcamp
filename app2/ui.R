library(shiny)

shinyUI(fluidPage(
  titlePanel("Move the Point"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("xcoord", "X Value", -10, 10, 0, step = 1),
      sliderInput("ycoord", "Y Value", -10, 10, 0, step = 1)
    ),
    
    mainPanel(
      plotOutput("plot1")
    )
  )
))