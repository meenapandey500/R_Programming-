area=c(600,800,1000,1200,1500) #unit of area=square feet  x
price=c(15,18,25,35,40)  #unit of price  ==>lacs  y
data1=data.frame("Area"=area,"Price"=price)
data1
#Scatter plot in R ==>plot(dataset,independent variable,
#dependent var)
plot(data1$Area,data1$Price)
#to define title of graph
plot(data1$Area,data1$Price,main="Area vs. Price of House")
#to define label of X -axis and Y-axis
plot(data1$Area,data1$Price,main="Area vs. Price of House",
     xlab="Area of House",ylab="Price Of House",
     las=1,xlim=c(500,1500),ylim=c(15,45),col=2,
     cex=2,pch=8)
#syntax :abline(lm(Y~X,data=datasetname))
# To draw a line
abline(lm(Price ~ Area, data = data1), col = "blue")

#Histrogram plot ==>Frequency Plot for continous variable
# Discrete and Continous Data means variables
#Discrete variable : I can be counted
#For eg. No. of Students in the class
# No. of days in a week
#Continous variable : we cannot count but can be measured.
# For Eg. Area,Price,Height,Weight,Speed
#Frequency Plot(Histrogram plot) for continous variable
#Frequence : No. of occurence
ages=c(12,23,6,7,9,14,29,67,89,70,60,96,34,53,18,49,20,56,
       49,38,64,79,70,15,73,28)
age_group=c(0,10,20,30,40,50,60,70,80,90,100) #interval

hist(ages,age_group,main="Age-Group Vs. Frequecy",
     xlab="Age-Group",las=1,breaks=8,col="red",
     border="blue")
lines(density(ages),lwd=7,col=3)
boxplot(ages)
quantile(ages,probs=c(0,0.25,0.5,1))
#to create a scatter plot on real dataset 
#Automobile_data.csv
data<-read.csv("Automobile_data.csv")
head(data)
colnames(data)
#Graph between make /Price
plot(data$width,data$price)

abline(lm(price ~ width, data = data),
       col="red")
#4-june-2020
#Automobile_data.csv
data1<-read.csv("Automobile_data.csv")
#Graph between highway.mpg /Price
plot(data1$highway.mpg,data1$price,
     main="Automobile Company",xlab="Highway Milage",
     ylab="Price",pch=8,col="red")
abline(lm(price~highway.mpg,data=data1),col="blue")

#Histogram on real data set automobile_data.csv
#Automobile_data.csv
min(data1$price)
max(data1$price)
data1<-read.csv("Automobile_data.csv")
hist(data1$price,prob=T,las=1,breaks=6,col="green",
     border="blue",main="Automobile company",
     xlim=c(5000,45000))
lines(density(data1$price),col="red",lwd=4)


hist(data1$width,las=1,breaks=5,col="green",
     border="blue",main="Automobile company")
lines(density(data1$width),lwd=4,col="red")

df=read.csv("employee.csv")
df
hist(df$age)
hist(df$age,freq=F)
hist(df$age,prob=T)
hist(df$age,prob=T,las=2,col="green",
     xlim=c(10,100),breaks=5,border="blue")
lines(density(df$age),lwd=3,col="red")
#7-june-2020
#ggplot2
library(ggplot2)
data1<-read.csv("Automobile_data.csv")
head(data1)
ggplot(data1)#to create canvas
#scatter graph ->geom_point()
ggplot(data1,aes(x=highway.mpg,y=price))+geom_point()
ggplot(data1,aes(x=highway.mpg,y=price,color=make))+geom_point()
#smooth type graph ==>geom)smooth()
ggplot(data1,aes(x=highway.mpg,y=price))+geom_smooth()
#bar graph
ggplot(data1,aes(x=fuel.type))+geom_bar()
ggplot(data1,aes(x=body.style))+geom_bar()
ggplot(data1,aes(x=fuel.type,fill=body.style))+geom_bar()

library(dplyr)
class_count <- dplyr::count(data1, fuel.type)
# :: scope resolution operator
class_count
ggplot(class_count, aes(x = fuel.type,y=n)) +
        geom_bar(stat="Identity")
class_count1 <- dplyr::count(data1, body.style)
class_count1

ggplot(class_count1, aes(x = body.style,y=n)) +
        geom_bar(stat="Identity")




