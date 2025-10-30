library(shiny)

shinyUI(fluidPage(
  titlePanel("Car MPG Predictor - mtcars"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("hp", "Horsepower:", min = 50, max = 350, value = 110),
      sliderInput("wt", "Weight (1000 lbs):", min = 1.5, max = 5.5, value = 3),
      helpText("Change values to predict miles per gallon (MPG) of a car!")
    ),
    mainPanel(
      h3("Predicted MPG"),
      verbatimTextOutput("pred"),
      h4("Documentation"),
      p("This app uses the 'mtcars' dataset to predict fuel efficiency (MPG) based on horsepower and weight.
      Adjust sliders to select car attributes and view predicted MPG below. No prior expertise required. Enjoy exploring car data!")
    )
  )
))
