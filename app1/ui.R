library(shiny)

shinyUI(fluidPage(
  titlePanel("My First App"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("in_text",
                "Type something in here:",
                value = "Hello World!")
    ),
    
    mainPanel(
      textOutput("out_text")
    )
  )
))