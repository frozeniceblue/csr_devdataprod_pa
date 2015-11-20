library(shiny)

# Define server logic
shinyServer(function(input, output) {
    
    # Calculate Variation CVR by MDE type - Reactivity
    var_cvr <- reactive({
        if (input$mde_type == "abs")
            var_cvr <- input$base_cvr + input$mde
        else 
            var_cvr <- input$base_cvr + (input$base_cvr * input$mde)
        return(var_cvr)
    })
    
    # Ouput the Calculated Sample Size
    output$sample_size <- renderText({
        
        if(var_cvr() > 1) {
            paste(c("Warning: Calculated Variation CVR[",
              var_cvr(),
              "]. It must be ≤ 1.0."))
        } else {
            #  i.e. for CLI
            # power.prop.test(p1 = .06, p2= .01,sig.level = .05, power = .8)$n
            sample_size <- power.prop.test(p1 = input$base_cvr,
                                           p2 = var_cvr(),
                                           sig.level = input$sig_level,
                                           power = input$pwr_level
                                           )$n
             prettyNum(ceiling(sample_size),big.mark = ",")
        }
              
    })
    
      
    # Ouput the Bar Chart
    output$bar_chart <- renderPlot({
        barplot(c(var_cvr(), input$base_cvr),
                names.arg = c("Variation", "BaseLine"),
                horiz=TRUE,col=c("gray","skyblue"))
        title(main = "CVR: BaseLine vs Variation",
              sub = "CVR in the gray area will not be distinguishable from the BaseLine.")
        
        if (var_cvr() < 1) {
            delta <- abs(var_cvr() - input$base_cvr)
            barplot(c(input$base_cvr-delta, input$base_cvr),
            names.arg = c("Variation", "BaseLine"),
            horiz=TRUE,col=c("salmon","skyblue"), add = TRUE)
        }

    })

})
