#' welcome to my sandbox
#' 
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

#' publish on Rpubs => load assets/img wrong
#' shell
#' publish(title = 'csr_ddp_pa', 'index.html', host = 'rpubs')
#publish(title = 'Web A/B Testing Simple Sample Size Calculator', 'index.html', host = 'rpubs')

#' anyway use gh-pages! simple is best.
