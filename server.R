library(shiny)
library(datasets)

irisData <- iris

shinyServer(function(input, output) {
  
  formulaText <- reactive({
    paste("Sepal.Length ~", input$variable)
  })
  
  formulaTextPoint <- reactive({
    paste("Sepal.Length ~", "as.integer(", input$variable, ")")
  })
  
  fit <- reactive({
    lm(as.formula(formulaTextPoint()), data=irisData)
  })
  
  output$caption <- renderText({
    formulaText()
  })
  
  output$irisBoxPlot <- renderPlot({ par(bg="light grey")
    boxplot(as.formula(formulaText()), 
            data = irisData,
            outline = input$outliers,
            col= c("red","blue","green"))
  })
  
  output$fit <- renderPrint({
    summary(fit())
  })
  
  output$irisPlot <- renderPlot({
    with(irisData, { par(bg="grey")
      plot(as.formula(formulaTextPoint()))
      abline(fit(), col="yellow",lwd=2)
    })
  })
  
})