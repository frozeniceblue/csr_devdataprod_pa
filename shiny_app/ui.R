library(shiny)

# Define UI for application
shinyUI(fluidPage(

# Application title
titlePanel("Web A/B Testing Simple Sample Size Calculator"),

# Input power.prop.test() parameters
sidebarLayout(
    sidebarPanel(
        numericInput("base_cvr", "Baseline CVR:", .06,
            min = .001, max = .999, step = .01),

        numericInput("mde", "Minimum Detectable Effect (MDE):", .01,
                     min = .001, max = .999, step = .1),
        
        radioButtons("mde_type", "MDE type:" ,
                     c("Absolute" = "abs", "Relative" = "rel"),
                     selected = "abs", inline = TRUE),
        
        sliderInput("sig_level", "Significance level α:",
                    min = 0, max = 1, value = .05, step = .01),
        
        sliderInput("pwr_level", "Statistical power 1−β:",
                    min = 0, max = 1, value = .8, step = .01)
    ),

    # Show reactively the Calculated Sample Size, the Bar Chart
    # Based on Input Data and power.prop.test()
    mainPanel(
        # Show Sample Size
        h3("Sample Size:"),
        
        h2(textOutput("sample_size", container = span)),
        
        p("per each Group"),
        
        # Show Bar Chart
        plotOutput("bar_chart",height = "300px")
    )
)
))
