library(MASS)

setwd("/Users/burrelvannjr/Desktop/hw2")


#1
#plot normal distributions and comment on the differences in the plots

#1a plot a normal distribution using 100 cases
norm1<-rnorm(100,0,1) #data for the plot
hist(norm1) #the actual plot

#1b plot a normal distribution using 10000 cases
norm2<-rnorm(10000,0,1) #data for the plot
hist(norm2) #the actual plot

#1c how do the plots differ. 





#2
#take random samples from the data and report means, sds, and comment on differences

cardata <- mtcars

#2a take 3 random samples of N=20
sample1 <- cardata[sample(1:nrow(cardata), 20,replace=FALSE),]
sample2 <- cardata[sample(1:nrow(cardata), 20,replace=FALSE),]
sample3 <- cardata[sample(1:nrow(cardata), 20,replace=FALSE),]

#2b report means and SDs of each random sample
mean(sample1$mpg)
mean(sample2$mpg)
mean(sample3$mpg)

sd(sample1$mpg)
sd(sample2$mpg)
sd(sample3$mpg)

#2c comment on difference, do they differ? why or why not?






#3
#calculate z-scores for every observation, and report the mean, sd, se, and ci for the variable

#3a write/type the formula for calculating a Z-score

#3b mean, sd, and se mean for the variable
mean_mpg <- mean(cardata$mpg) #don't put this in the data
sd_mpg <- sd(cardata$mpg) #don't put this in the data
se_mpg <- ((sd_mpg)/(sqrt(nrow(cardata)))) #don't put this in the data

#3c calculate the z-score for all observations, and report the z-score for the 12th case
cardata$z_mpg <- ((cardata$mpg-meanmpg)/sdmpg)
cardata$z_mpg[12]

#3d calculate the 99% confidence interval
ci_mpg <- list((mean_mpg-(2.58*se_mpg)),(mean_mpg+(2.58*se_mpg)))
ci_mpg


