library(shiny)

shinyServer(function(input, output) {
  
  tree_model1 <- lm(Volume ~ Girth, data = trees)
  
  output$plot1 <- renderPlot({
    plot(trees$Girth, trees$Volume, xlab = "Girth", ylab = "Volume", main = "Trees")
    abline(tree_model1)
    predictions1 <- predict(tree_model1, data.frame(Girth = input$girth))
    points(input$girth, predictions1, col = "red")
  })
  
  output$volume <- renderText({
    predict(tree_model1, data.frame(Girth = input$girth))
  })
  
})