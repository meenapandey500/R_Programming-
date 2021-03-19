#Plot
x=c(1,2,3,4,5,6,7,8,9,10)
y=x^2
print(x)
print(y)
plot(x,y) #scatter plot==>to set relation between
#x & y means present in dot means point
plot(x,y,type="l") #line graph
plot(x,y,type="b") #line and point both show
plot(x,y,type="o")#overplotted points and lines
plot(x,y,type="o",col="red")#col means color
#To define the title of graph use main ->inbuilt
#parameter of plot()
plot(x,y,type="o",col="red",main="ABC Company")
#to define x-axis title and y-axis title
plot(x,y,type="o",col="red",main="ABC Company",
     xlab="X",ylab="y=x^2")
plot(x,y,cex=.5)
#cex to increase/decrease datapoint size
plot(x,y,pch=8,cex=.6,col="blue")
#pch ==>to provide various pattern of datapoint
help(pch)
plot(x,y,pch=1:5,cex=.5:.9,col=1:7)
#another example
x=seq(-pi,pi,0.1) #pi=3.14
#here start -pi means 3.14 and stop pi means +3.14
#and steps=0.1 means increment by 0.1
x
sin(x)
plot(x,sin(x),cex=.5,type="l")
#define the title ,x axis and y-axis title
plot(x,sin(x),cex=.5,type="l",main="The Sine Function",
     ylab="Sine of X",col="red")
lines(x,cos(x),col="blue")
legend("bottomleft",c("sin(x)","cos(x)"),fill=c("red","blue"))

#To save a graph as jpeg /png
#if save jpeg extension
jpeg(file="plot1.jpeg")
plot(x,sin(x),cex=.5,type="l",main="The Sine Function",
     ylab="Sine of X",col="red")
lines(x,cos(x),col="blue")
legend("bottomleft",c("sin(x)","cos(x)"),fill=c("red","blue"))
dev.off()
png(file="plot2.png",width=600,height=350)
plot(x,sin(x),cex=.5,type="l",main="The Sine Function",
     ylab="Sine of X",col="red")
lines(x,cos(x),col="blue")
legend("bottomleft",c("sin(x)","cos(x)"),fill=c("red","blue"))
dev.off()

#Lecture Date 2-july-2020
#Create data for the graph
W<-c(9,13,21,8,36,22,12,41,31,33,19)
#create the histogram
hist(W,xlab="Weight",col="green",border="red")
#Range of X and Y values
hist(W,xlab="Weight",col="green",border="red",
     xlim=c(5,45),ylim=c(0,5),breaks=5)
#Bar Plot
#Create the data for the bar plot
W<-c(7,12,28,3,41)
M<-c("Mar","Apr","May","Jun","Jul")
#plot the bar chart
barplot(W,names.arg=M,col="pink",border="blue",
        xlab="Month",ylab="Weight",
        main="Weight chart according to month")
#install.packages("ggplot2")
#load library ggplot2
library(ggplot2)
#The ggplot2 package Grammer of graphics 

x=c(1,2,3,4,5,6,7,8,9,10)
y=x^2 #y=f(x)=x^2
x
y
df=data.frame("X"=x,"Y"=y)
df
library(ggplot2)
ggplot(df)#To create canvas
ggplot(df,aes(x=x,y=y))#to define axis
#of x and y
#aes() -->aesthetic ==>inbuilt function
#define column of data frame in x ad y axis
#scatter plot ==>geom_point()
ggplot(df,aes(x=x,y=y))+geom_point()
#To define title of graph
ggplot(df,aes(x=x,y=y))+geom_point(color="red")+
  labs(title="ABC Company",
    subtitle="Stright function y=x^2",x="X",y="X^2")+
  coord_cartesian(xlim=c(2,10),ylim=c(0,100))

ggplot(df,aes(x=x,y=y))+geom_point(color="red")+
  geom_smooth(color="green")
#Create data for the graph
W<-c(7,5,12,28,3,41)
M<-c("Mar","Apr","May","Jun","Jul","ggg")
df=data.frame("W"=W,"M"=M)
ggplot(df,aes(x=W))+geom_bar(color="red")

data=read.csv("salary_data.csv")
data
#scatter plot 
ggplot(data,aes(x=YearsExperience,y=Salary))+
  geom_point(color="red")+geom_smooth(color="green")

ggplot(data,aes(x=YearsExperience,y=Salary))+
  geom_smooth(color="green")

#Lecture 6-july-2020 visualisation ggplot()
#to call library
library(ggplot2)
#To read csv dataset
data1=read.csv("automobile_data.csv")
head(data1,10)
colnames(data1)
#scatter plot
ggplot(data1)#To create canvas
ggplot(data1,aes(x=highway.mpg,y=price))
ggplot(data1, aes(x = highway.mpg, y = price)) +
  geom_point()

ggplot(data1, aes(x = highway.mpg, y = price,color=make)) +
  geom_point()
#line plot
ggplot(data1, aes(x = highway.mpg, y = price)) +
  geom_smooth()  

#scatter
ggplot(data1, aes(x = width, y = price,color=make)) +
  geom_point()
#bar graph==>frequency graph
head(data1,10)
ggplot(data =data1, aes(x = fuel.type)) +
  geom_bar()  
ggplot(data =data1, aes(x = make)) +
  geom_bar()  

ggplot(data1, aes(x = body.style)) +
  geom_bar()  

ggplot(data =data1, aes(x = fuel.type,fill=body.style)) +
  geom_bar()+labs(title = "Auto Mobile Company",
                  subtitle = "Andheri Eash Mumbai",
                  x = "Fuel type of Car",
                  y = "Frequency",
                  color = "Body style")
#ggplot()+ggtitle("use theme (plot.title=element_text(hjust=0.5)to center")+
 # theme(plot.title = element_text(hjust='center')

ggplot(data1, aes(x = highway.mpg, y = price)) +
geom_point(col="blue")+xlab("Highway milage")+ylab("Price of car")+
ggtitle("Automobile Company")+theme_linedraw()+
  theme(plot.title=element_text(hjust=0.5))
                                                                       
#range(scale) from 0 to 1  center (0+1)/2==>0.5


