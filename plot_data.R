#Script to plot the logistic growth data

growth_data <- read.csv("experiment.csv")

install.packages("ggplot2")
library(ggplot2)

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("Time") +
  
  ylab("Number of cells (log)") +
  
  scale_y_continuous(trans='log10')

