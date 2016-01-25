library(shiny)

shinyServer(function(input, output) {
  
  output$plot1 <- renderPlot({
    input$rollButton
    rolls <- sample(1:6, input$nrolls, replace = TRUE)
    barplot(table(rolls), ylab = "Number of Times Rolled")
  })
  
})