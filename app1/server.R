library(shiny)

shinyServer(function(input, output) {
  
  output$out_text <- renderText({
    input$in_text
  })
  
})