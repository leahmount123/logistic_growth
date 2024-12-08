growth_data <- read.csv("experiment.csv")

library(ggplot2)

N0 <- exp(6.8941709) 

r <- 0.0100086

K <- 6.000e+10

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

expo_fun <- function(t) {
  
  N <- N0*exp(r*t)
  
  return(N)
  
}

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun) +
  
  xlab("Time (minutes)") +
  
  ylab("Log population size (Log # of cells)") +
  
  geom_line() +
  
  scale_y_continuous(trans='log10') +
  
  geom_function(fun=expo_fun, colour="cyan") +
  
  xlab("Time (minutes)") +
  
  ylab("Log population size (Log # of cells)") +
  
  geom_line() +

  scale_y_continuous(trans='log10') +
  
  legend(x = 50, y = 1e+20, legend=c("Logistic Model", "Exponential Model"),
       col=c("black", "cyan"))
  
  ### ERROR: the legend is not adding to the graph. I think its likely
  ### because it does not know where to put the legend.
  legend(x = "topleft", box.lwd = 2 , title="MODELS",  
         legend=c("Logistic", "Exponential"),  
         fill = c("black","cyan")) 
