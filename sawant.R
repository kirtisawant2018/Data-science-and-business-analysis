data=read.csv(file.choose(),header = T)
data
attach(data)

## to check the simension of the data##
str(data)
Scores
Hours
length(Scores)
length(Hours)


##fit simple linear regression to given data##
##Scores is dependent variable and Hours is a independent variables##
model<-lm(Scores~Hours)
model

##i.e from the above model parameter##
###The summary of the model###
summary(model)

###Graphical Representation of given observatio to check model fit###

plot(Hours,Scores,main="Scatter plot",pch=15,col="blue")
abline(lm(Scores~Hours),col="black")

##Then use regression estimator##
y=2.484+9.776*(9.25)
y

###Interpretation###

#1)The p value is 2.2e-16 which show that the model is significant.
#2)which the p value is less than 0.05 Then the model is significant.
#3) adj.R-square=0.9509,themax the R-square then the model is significant.
#4) F-statistics=465.8
#5) multiple R-square =0.9529

###Result- so the Score of9.25 Hours 92.912###

