library(shiny)
library(quantmod)

shinyServer(function(input, output) {
  
  output$plot1 <- renderPlot({
    stock <- getSymbols(input$ticker, auto.assign = FALSE, 
                        from = input$daterange[1], to = input$daterange[2])
    plot(stock, main = input$ticker, ylab = "Price in USD")

  })
  
})