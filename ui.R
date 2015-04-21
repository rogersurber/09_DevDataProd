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
                h3(''),
                h3('Instructions'),
                h4('Choose the speed of the car in miles per hour (mph) on the slider.
                   Submit the value for calculation by pressing the Submit button. 
                   You will receive an estimate of the car\'s stopping distance in feet [feet]
                   at the selected speed.')
                )
        )
)

