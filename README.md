## Question 1

I used the "experiment.csv" file, which I downloaded from OSF.

***N0* = exp(6.8941709) = ~987**
- This value is found by taking the exponential of the intercept estimate when *K*>>*N0* and t is small.
- This is because we are trying to find the population size when *t*=0, and hence when the line crosses the y axis. 
- The reason we take the exponential of the y-intercept value is because the data is ln-transformed, so we need to revert it to its original state.
- **Issue**: we already know the *N0* value from the raw data (csv file), and it is 879. This is the *N* value when *t*=0.
  - **Potential explanation**: there is a standard error of 0.0111720, which could explain the discrepancy
- For the rest of the analysis, we will be using the exp(6.8941709) value.

***r* = 0.0100086**
- This value is found by taking the *t* estimate when *K*>>*N0* and *t* is small.
- It is essentially estimating the *t* gradient, measuring growth rate over time.

***K* = 6.000e+10**
- This is calculated by taking the intercept when *t* is large
- **Reason**: when *t* is large, the population is at carrying capacity and remaining at one size (*N*). This is where it will cross the y axis, and hence it would use the y intercept.

**Plotting the model**

![image](https://github.com/user-attachments/assets/1bac377f-08c6-401e-976f-e6cb6473fa6b)
- After ~1250 minutes, the population size starts to notably increase
- The population size increases exponentially until it reaches the carrying capacity (*K*) at ~2500 minutes
- This carrying capacity is then maintained

## Question 2

The assumption of exponential growth requires using the population size equation when *t* is small, as this is the time frame when the population is growing exponentially. Therefore, the equation used is:

- N(*t*) = N<sub>0</sub>e<sup>rt</sup>
- N(4980) = 987 * e<sup>0.0100086*4980</sup>
- N = 4.373 x 10<sup>24</sup>

This is a population size much larger than expected looking at the raw data. It would make more sense to estimate the population size using the logistic growth model, assuming that the population will eventually run out of the resources that would be needed to maintain exponential growth. A value of *t* = 4980 falls under the group of *t* being large, and hence the population size would be at carrying capacity:

- N(*t* > 3000) ≈ K
- N(4980) ≈ 6.000e+10
- N ≈ 6 x 10<sup>10</sup>

This is clearly a much smaller population size than predicted with the exponential model, but makes more sense in terms of the eventual decline in resources and when comparing to the raw data.

## Question 3

![image](https://github.com/user-attachments/assets/c3c4b43d-6dae-4fdd-ad89-df2cf4475e97)

This is a log-scaled (on the y axis) graph, comparing the logistic model (black) and the exponential model (blue). It needs to be log-scaled, or else there would be n way of seeing the extent of the exponetial growth on the same graph as the logistic model.
