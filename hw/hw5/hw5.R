library(MASS)

#pull in survey data set (from the MASS package above) and turn it into a useable object 
#survey is a data set of 237 students and their responses to questions
data <- survey 

#correlation is a bivariate relationship between interval/continuous variables
#correlation between 2 interval/continuous variables with significance
cor.test(data$Age, data$Pulse)