library(MASS)

#pull in survey data set (from the MASS package above) and turn it into a useable object 
#survey is a data set of 237 students and their responses to questions
data <- survey 




#t-test is a bivariate relationship between one categorical/discrete independent variable of only two groups, and one interval/continuous dependent variable

#call the means for the interval/continuous variable (dependent) based on each group in the categorical variable (independent)
#for t-test, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second
tapply(data$Wr.Hnd, data$Sex, mean, na.rm=TRUE) 

#call the standard deviations for the interval/continuous variable (dependent) based on each group in the categorical variable (independent)
#for t-test, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second
tapply(data$Wr.Hnd, data$Sex, sd, na.rm=TRUE) 

#call the actual t-test
#for t-test, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second
t.test(data$Wr.Hnd ~ data$Sex)

#based on means, who has bigger hands?





#for ANOVA, list the dependent (interval-ratio level) variable first and the independent (discrete/categorical) variable second

#call the means for the interval/continuous variable (dependent) based on each group in the categorical variable (independent)
tapply(data$Pulse, data$Smoke, mean, na.rm=TRUE) 
#call the standard deviations for the interval/continuous variable (dependent) based on each group in the categorical variable (independent)
tapply(data$Pulse, data$Smoke, sd, na.rm=TRUE) 

#call the actual ANOVA/F test
#ANOVA is a bivariate relationship between one categorical/discrete independent variable of three or more groups, and one interval/continuous dependent variable
summary(aov(data$Pulse ~ data$Smoke))

#based on means, who has higher pulse?







