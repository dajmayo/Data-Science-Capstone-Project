library(shiny)
library(dplyr)
library(stringr)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  setBackgroundColor(color = c("#131B4B", "#FFFFFF"), gradient = c("linear",
                                                                   "radial"), direction = c("bottom")),
  # Application title
  tags$div(
    h2(HTML("<font color=\"#FFFFFF\"><b>Word Prediction Application</b></font>"), align = "center")
  ),
  tags$div(
    h3(HTML("<font color=\"#FFFFFF\"><b>How to use?</b></font>"), align = "center")
  ),
  tags$div(
    h5(HTML("<font color=\"#FFFFFF\">Welcome! 
            If you are looking for an application that can predict the next word for your text input, may it be a word or a phrase, you have come to the right place. Here, you can easily input the word/phrase you want to predict the next word to and three predicted words will display below. Just click the button of your desired predicted word and it will add up to the text you have entered. Afterwhich, it will predict again the next word to the new phrase created after clicking the button.</font>"), align = "center"),
  br(),
    h5(HTML("<font color = \"#FFFFFF\"> Note: words or phrases beyond the scope of the application will be unable to predict the next word hence displaying 'NA's for all buttons.</font>"), align = 'center')),
  sidebarLayout(position = "left", 
    sidebarPanel(
      h4("Enter word/phrase"),
      textInput("inputString", "", value = ""), width = 15, align = "center",
      h4(HTML("<center>Predicted Next Word</center>")),
      uiOutput("show")),
    mainPanel(
      )
)
)
)




