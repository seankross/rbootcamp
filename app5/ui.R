library(shiny)

shinyUI(fluidPage(
  titlePanel("View Stock Prices"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("ticker", "Stock Ticker:", "GE"),
      dateRangeInput("daterange", "Date range:",
                     start = Sys.Date()-365,
                     end = Sys.Date())
    ),
    
    mainPanel(
      plotOutput("plot1")
    )
  )
))