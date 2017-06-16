setwd("/Users/burrelvannjr/Desktop/hw2")

library(MASS)


# problem 1
data1 <- rnorm(100,5,2)
hist(data1)

data2 <- rnorm(10000,5,2)
hist(data2)


# problem 2
arrests <- USArrests

sample1 <- arrests[sample(1:nrow(arrests), 20,replace=FALSE),]
sample2 <- arrests[sample(1:nrow(arrests), 20,replace=FALSE),]
sample3 <- arrests[sample(1:nrow(arrests), 20,replace=FALSE),]

mean(sample1$Murder)
mean(sample2$Murder)
mean(sample3$Murder)

sd(sample1$Murder)
sd(sample2$Murder)
sd(sample3$Murder)


# problem 3
arrests <- USArrests

mean(arrests$Assault)
sd(arrests$Assault)
(sd(arrests$Assault))/(sqrt(nrow(arrests)))

arrests$assaultz <- (arrests$Assault - mean(arrests$Assault))/(sd(arrests$Assault))

mean(arrests$Assault) - (2.58*((sd(arrests$Assault))/(sqrt(nrow(arrests)))))
mean(arrests$Assault) + (2.58*((sd(arrests$Assault))/(sqrt(nrow(arrests)))))


list(mean(arrests$Assault) - (2.58*((sd(arrests$Assault))/(sqrt(nrow(arrests))))), mean(arrests$Assault) + (2.58*((sd(arrests$Assault))/(sqrt(nrow(arrests))))))






list((mean_mpg-(2.58*se_mpg)),(mean_mpg+(2.58*se_mpg)))




