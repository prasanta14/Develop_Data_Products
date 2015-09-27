library(shiny) 

Risk <-function(waist,hip) {waist/hip}

diagnostic_f<-function(waist,hip){
  Risk_value<-waist/hip
  ifelse(Risk_value<0.9,"LOW",ifelse(Risk_value<0.99,"MODERATE","HIGH"))
}

shinyServer(
  function(input, output) {
    
    output$inputwaistvalue <- renderPrint({input$waist})
    output$inputhipvalue <- renderPrint({input$hip})
    output$estimation <- renderPrint({Risk(input$waist,input$hip)})
    output$diagnostic <- renderPrint({diagnostic_f(input$waist,input$hip)})
  } 
)