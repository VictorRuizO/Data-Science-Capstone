#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
source("model.R")
#' @importFrom magrittr %>%

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$ngram_output <- renderText({
        main2(input$user_input, 1)
    })
    
    output$ngram_output2 <- renderText({
        main2(input$user_input, 2)
    })
    
    output$ngram_output3 <- renderText({
        main2(input$user_input, 3)
    })

})
