library(MASS)

#pull in survey data set (from the MASS package above) and turn it into a useable object 
#survey is a data set of 237 students and their responses to questions
data <- survey 

#call a table with all values of the variable listed
#usually list the independent variable first and the dependent variable second
table(data$Exer, data$Smoke)

#call the actual chi square test
#chi square is a bivariate relationship between two categorical/discrete variables (e.g. ordinal or nominal)
chisq.test(data$Exer, data$Smoke)