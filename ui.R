library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("App for finding the Risk Level Of Your Cardiovascular Health Problems"),
    sidebarPanel(
      numericInput('waist', 'Your Waist Size (in inches)', 28, min = 5, max = 100, step = 0.01) ,
      numericInput('hip', 'Your Hip Size (in inches)', 36, min = 5, max = 100, step = 0.01),
      submitButton('Submit')
    ), 
    mainPanel(
      p('This app calculates the Risk Level Of Your Cardiovascular Health Problems. A waist-hip measurement is the ratio of the circumference of your waist to that of your hips. You measure the smallest circumference of your waist, usually just above your belly button, and divide that total by the circumference of your hip at its widest part.'),
        
      h4('You have entered:'),
      p('Waist Size'), verbatimTextOutput("inputwaistvalue"),
      p('Hip Size'), verbatimTextOutput("inputhipvalue"),
      h4('Your Waist to Hip Ratio is:'),
      verbatimTextOutput("estimation"),
      p('Your Risk Level is:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)