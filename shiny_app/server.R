library(shiny)

# Define server logic
shinyServer(function(input, output) {
    

    # Varidate reactivly InputData 
    varidInput <- reactive({
    })

    # Ouput the Calculated Sample Size
    output$sample_size <- renderText({
        
        prettyNum(ceiling(1000),big.mark = ",")
              
    })
      
    # Ouput the Bar Chart
    output$bar_chart <- renderPlot({
            delta <- input$mde    
            mde_cvr <- input$base_cvr + delta
            
            barplot(c(mde_cvr, input$base_cvr),
                    names.arg = c("Variation", "BaseLine"),
                    horiz=TRUE,col=c("gray","skyblue"))
            barplot(c(input$base_cvr-delta, input$base_cvr),
                    names.arg = c("Variation", "BaseLine"),
                    horiz=TRUE,col=c("salmon","skyblue"), add = TRUE)
            title(main = "CVR: BaseLine vs Variation",
                  sub = "CVR in the gray area will not be distinguishable from the BaseLine.")
            
            
    })
    
    
})
