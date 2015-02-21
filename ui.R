library(markdown)

shinyUI(fluidPage(
        
        titlePanel("Prediction Distance Based on Speed"),
        
        fluidRow(
                column( 4,
                        numericInput('speed', 'Speed ml/hr', 16, min = 4, max = 25, step = 1),
                        numericInput('confidenceLevel', 'Confidence Level', 0.95, min=0.80, max=0.99, step=0.01),
                        submitButton('Submit')
                ),
                column(4,
                       h3('Results of prediction'),
                       h4('You entered'), 
                       verbatimTextOutput("inputValue"), 
                       h4('Which resulted in a prediction of '), 
                       verbatimTextOutput("prediction"),
                       h4('The upper bound is '),
                       verbatimTextOutput("ul"),
                       h4('The lower bound is '),
                       verbatimTextOutput("ll")
                ),
                column(4,
                       includeMarkdown("include.md")
                )
        )
))