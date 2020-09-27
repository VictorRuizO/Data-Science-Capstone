#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Text Prediction Model"),
    
    em(h4("Coursera Data Science Capstone Final Project")),
    
    p("This app that takes an input phrase (multiple words) in a text box and outputs a prediction of the next word."),
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            h2("Instructions:"), 
            h5("1. Enter a word or words in the text box."),
            h5("2. The predicted next word prints below it in gray."),
            h5("3. No need to hit enter of submit."),
            h5("4. A question mark means no prediction, typically due to mis-spelling."),
            h5("5. Additional tabs show information about this aplication."),
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(
                tabPanel("Predict",
                         textInput("user_input", h3("Your Input:"), 
                                   value = "Your words"),
                         h3("Predicted Next Word:"),
                         
                         h4(em(span(textOutput("ngram_output"), style="color:#909090"))),
                         br(),
                         h3("Anothers predictions:"),
                         h4(em(span(textOutput("ngram_output2"), style="color:#909090"))),
                         h4(em(span(textOutput("ngram_output3"), style="color:#909090"))),
                         ),
                tabPanel("About",
                         h3("Shiny Application Developed by:"),
                         em(p("Victor Duvan Ruiz Ochoa")),
                         em(p("September 2020"))
                )
            )   
        )
    )
))

