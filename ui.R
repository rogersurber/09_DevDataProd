library(shiny)

shinyUI(
        pageWithSidebar(
                headerPanel("Stopping Distance for Cars"),
  
                sidebarPanel(
                sliderInput('speed', 'Speed [mph]', value = 25, min = 10, max = 30, step = 1),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Prediction of stopping distance'),
                h4('Your input (speed mph):'),
                verbatimTextOutput("inputValue"),
                h4('Result of stopping distance (feet):'),
                verbatimTextOutput("prediction"),
                h4('Choose the speed of the car in miles per hour (mph). You will receive an estimate of stopping distance in feet [feet]')
                )
        )
)

