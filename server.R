library(shiny)
data(cars)

stoppingDistance <- function(speed) {
        fit <- lm(dist ~ speed, data = cars)
        new.speed <- data.frame(speed)
        round(predict(fit, newdata = new.speed), digits = 0)
}

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$speed})
                output$prediction <- renderPrint({stoppingDistance(input$speed)})
        }
)
