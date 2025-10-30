library(shiny)
data(mtcars)

# Linear model for prediction
model <- lm(mpg ~ hp + wt, data = mtcars)

shinyServer(function(input, output) {
  output$pred <- renderText({
    pred_mpg <- predict(model, newdata = data.frame(hp = input$hp, wt = input$wt))
    round(pred_mpg, 2)
  })
})
