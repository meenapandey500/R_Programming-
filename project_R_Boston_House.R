library(MASS)
library(ISLR) 
#ISLR : introduction to statistical learning 
#dataset boston
#Load dataset
#df=read.csv("datasetfilename.csv")
head(Boston)
summary(Boston)
#Exploratory Data Analysis(EDA)
#check relation between independent variable with 
#dependent variable then use scatter plot : plot(Y~X,dataset)
#Here dependent variable means y =medv  and 
#independent variable  lstat
plot(medv~lstat, Boston) 
#show relations of deprndent variables with all indepedent
#variables then use pairs()
pairs(~ medv + ptratio + black + lstat + dis + rm + crim, 
      data = Boston, main = "Boston Data")
#show graph and conclusion 
#lstat, dis and rm are good linear variables but things like 
#crim,ptration,black is not linear,
#in fact the relationship is quite complicated.
#Simple linear regression  lm() ==>parameter constructor
#objectname=lm(parameter1,para2,....)
#We train model  wu use lm(Y~X,datasetname)
fit1=lm(medv~lstat,data=Boston) #fit1 user defined object
summary(fit1)
#we visualize the data after train
plot(medv~lstat,Boston)#scatter plot
abline(fit1,col="red")

confint(fit1)
#To test our model use predict()
predict(fit1,data.frame(lstat=c(10,20,30)),
        interval="confidence")
#Multiple linear regression
#We train our model with 2 independent variables
#fit2 user defined object of Linearregression
fit2=lm(medv~lstat+age,data=Boston)
summary(fit2)

#We train our model with all independent variables
#fit3 user defined object of Linearregression
fit3=lm(medv~.,Boston) #lm(Y~.) . means all independent variables
summary(fit3)
#Nonlinear terms 
#we train out model with increase the degree of x
fit6=lm(medv~lstat +I(lstat^2),Boston)
summary(fit6)
#use polynomial function
attach(Boston)
fit7=lm(medv~poly(lstat,4)) #degree =4
plot(medv~lstat)
points(lstat,fitted(fit7),col="blue",pch=20)
summary(fit7)

#Interaction
fit5=lm(medv~lstat*age,Boston)
summary(fit5)

#Final model
fit6=lm(medv~lstat+crim+rm+dis+black+chas+nox+rad+tax+ptratio+
          I(lstat^2)+I(rm^2))
summary(fit6)
plot(fit6)








