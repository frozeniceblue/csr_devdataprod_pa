#' welcome for my sandbox
#' 
#' FYI: Building your own server on VM for analytics and testing
#' check it out building_data_analytics_env.md

#----
#' First Assigenment shiny ###
#' Built in Examples
#' 

library(shiny)

runExample("01_hello") # a histogram
runExample("02_text") # tables and data frames
runExample("03_reactivity") # a reactive expression
runExample("04_mpg") # global variables
runExample("05_sliders") # slider bars
runExample("06_tabsets") # tabbed panels
runExample("07_widgets") # help text and submit buttons
runExample("08_html") # Shiny app built from HTML
runExample("09_upload") # file upload wizard
runExample("10_download") # file download wizard
runExample("11_timer") # an automated timer

#' Run skelton
#' that is copied from 04_reactivity
#' examplesDir: /lib64/R/library/shiny/examples/03_reactivity

runApp("shiny_app")



#----
#'  Second Assigenment slidify ###
#' 
#' prepare slidify
#' 
install.packages("devtools")
library(devtools)
install_github('slidify', 'ramnathv')
install_github('slidifyLibraries', 'ramnathv')


library(slidify)

author("first_deck")
