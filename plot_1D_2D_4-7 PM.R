#Graph plotting in R of two types 
#1. One-dimensional plotting : In this plotting ,we plot one variable 
#at a time  but many records means rows
#There are the 4 major types of graphs that are used for one dimensional 
#analysis 
'''1. Five point summary
   2. Box plotting
   3. Histograms
   4. Bar plotting '''

#Loading the data  
#we have inbuilt dataset in R 
library(datasets)
data(mtcars) #mtcars inbuilt dataset
#data() to show all inbuilt dataset in system
#To show first 6 records from dataset
head(mtcars)
#One-dimensional plotting 
#1. Five point summary use summary() inbuilt function
summary(mtcars)

# 2. Box plotting   (we use target variable mpg)
boxplot(mtcars$mpg,col="red")

boxplot(mtcars$hp,col="red")

#barplot(it is also known as freq. graph)
barplot(table(mtcars$carb),col="red") 
#barplot work on discrete value

#histogram : -use hist() : It is also 
#known as frequency graph
hist(mtcars$mpg,col="red",breaks=50)
#Two dimensional graph
#In this plot , we visualise and compare
#one variable with respext to the other
#means to check relation between independent
#variable abd target variable (output)
#scatter plot
with(mtcars,plot(hp,mpg))
#plot(input x,output y)

#boxplot 
df=read.csv("Automobile_data.csv")
head(df)
boxplot(df$price,col="red")

#target price with make input
boxplot(price~make,data=df,col="green")

