library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Tree Volume"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("girth", "Tree Girth:", 14, min = 8, max = 22),
      h4("Predicted Volume:"),
      textOutput("volume")
    ),
    
    mainPanel(
      plotOutput("plot1")
    )
  )
))