
library(shiny)
library(ggplot2)
library(data.table)

shinyServer(
  function(input,output)
  {
    
   
    
    
    output$RAT<- renderPlot({ 
      
      dt <- data.table( x = c(0,0,{as.numeric(input$x)}), y = c(0,{as.numeric(input$y)},0))
      z<- sqrt(input$x^2 + input$y^2)
      
      ggplot() + 
      geom_polygon(
      data = dt
      ,aes(
        x=x
        ,y=y
        
         )
      ) + ggtitle(paste("The Hypotnous is ",z) ) + ylim(0,max(c(input$x,input$y)) ) + xlim(0,max(c(input$x,input$y)) )
    }
    )
    
  
    
  }
  )