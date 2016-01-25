library(shiny)

shinyServer(function(input, output) {
  
  output$plot1 <- renderPlot({
    plot(input$xcoord, input$ycoord, xlim = c(-10, 10), ylim = c(-10, 10))
  })
  
})