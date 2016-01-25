library(shiny)

shinyUI(fluidPage(
  titlePanel("Roll Dice"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("nrolls", "Number of Rolls:", 100, min = 0, step = 1),
      actionButton("rollButton", "Roll Again")
    ),
    
    mainPanel(
      plotOutput("plot1")
    )
  )
))