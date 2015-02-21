data(cars)
shinyServer( function(input, output) {
        output$inputValue <- renderPrint({input$speed})
        output$prediction <- renderPrint({predict(lm(dist~speed, data=cars), 
                                                  newdata=data.frame(speed=input$speed), interval="confidence", 
                                                  level=input$confidenceLevel)[1]})
        output$ul <- renderPrint({predict(lm(dist~speed, data=cars), 
                                                  newdata=data.frame(speed=input$speed), interval="confidence", 
                                                  level=input$confidenceLevel)[3]})
        output$ll <- renderPrint({predict(lm(dist~speed, data=cars), 
                                                  newdata=data.frame(speed=input$speed), interval="confidence", 
                                                  level=input$confidenceLevel)[2]})
}
)