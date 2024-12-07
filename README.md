I used the "experiment.csv" file, which I downloaded from OSF.

**N0 = exp(6.8941709) = ~987**
- This value is found by taking the exponential of the intercept estimate when K>>N0 and t is small.
- This is because we are trying to find the population size when t=0, and hence when the line crosses the y axis. 
- The reason we take the exponential of the y-intercept value is because the data is ln-transformed, so we need to revert it to its original state.
- Issue: we already know the N0 value from the raw data (csv file), and it is 879. This is the N value when t=0.
- For the rest of the analysis, we will be using the exp(6.8941709) value.
