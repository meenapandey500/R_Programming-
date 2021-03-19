#Lecture 27-july-2020
#Visualisation 
#scatter plot
X=c(1,2,3,4,5,6)
Y=X^2
print(X)
print(Y)
#scatter plot  
#=>use inbuilt function 
#plot(Independent variable,dependent variable)
plot(X,Y) #by default scatter plot
#line plot
plot(X,Y,type="l")  #l for line
plot(X,Y,type="b")  #l for line and data point means dot
#overplotted points and lines
plot(X,Y,type="o",col="red") #col means color
plot(X,Y,type="o",col=6:12,cex=1:6) 
plot(X,Y,type="o",col=6:12,cex=1,pch=1,lwd=3) 
#pch parameter means various pattern of datapoint
help(pch)
plot(X,Y,type="o",col=6:12,cex=1,pch=1,lwd=3,
     xlab="Value Of X",ylab="Y=X^2",
     main="ABC Private Ltd.") 

#To save a graph as jpeg/png 
#if save jpeg extension
jpeg(file="plot1.jpeg")
plot(X,Y,type="o",col=6:12,cex=1,pch=1,lwd=3,
     xlab="Value Of X",ylab="Y=X^2",
     main="ABC Private Ltd.") 
dev.off()

#ANOTHER EXAMPLE 
X=seq(-pi,pi,0.1) #pi=3.14 
#here start=-pi means -3.14 and stop = +pi means +3.14
#and increment by 0.1
print(X)
Y=sin(X)
Y
plot(X,Y)
plot(X,Y,cex=0.4,type="l",col="red",xlab="Value of X",
     ylab="Y=sin(X)",main="Sin Function")
Y1=cos(X)
lines(X,Y1,col="blue")

#Lecture 28-july-2020 
area=c(10,11,14,15,18,20,21,26,27,28,29,30,31)
print(area)
#10-15 ==>10-14.99
#15-20 ==>15-19.99
#create histogram 
hist(area,col="blue",border="red",
     xlab="Area in SqFt.",main="Frequency Graph")
#Bar graph 
max_temp=c(22,27,26,24,23,26,28)
barplot(max_temp,names.arg=c("Mon","Tue","Wed",
"Thu","Fri","Sat","Sun"),xlab="Day",
ylab="Degree Celcius",main="Maximum Temperatures
in a week",col=2:8)

#Horizontal bar graph
barplot(max_temp,names.arg=c("Mon","Tue","Wed",
        "Thu","Fri","Sat","Sun"),ylab="Day",
  xlab="Degree Celcius",main="Maximum Temperatures
in a week",col=2:8,horiz=TRUE,border="red")
#plotting Categorical Data 
age<-c(17,18,18,17,18,19,18,16,18,18)
print(age)
d=table(age) #table inbuilt function
print(d)
barplot(d,col="blue",density=15,border="red",
        xlab="Age",ylab="Count",main="Age count
        of 10 students")
#To load csv file
df=read.csv("salary_data.csv")
print(df)
X=df$YearsExperience
print(X)
Y=df$Salary
print(Y)
plot(X,Y)
plot(X,Y,type="o",col="red",xlab="Years of 
     Experience",ylab="Salary",main="Itvedant")
hist(Y,xlab="Salary",col="darkred",border="green")
#to load dataset 
car=read.csv("automobile_data.csv")
head(car,10)
colnames(car)
X=car$make
Y=car$price
plot(X,Y,type="l")
print(Y)
print(X)
#ggplot graph : grammer of graphics 
#install.packages("ggplot2")
library(ggplot2)
ggplot(car) #create canvas
##mension  data point on X and Y axis
ggplot(car,aes(x=width,y=price))
#plot scatter plot geom_point()
ggplot(car,aes(x=width,y=price))+geom_point(color="red")
#Lecture 29-7-2020
library(ggplot2)
#to load dataset 
car=read.csv("automobile_data.csv")
head(car,10)
ggplot(car,aes(x=width,y=price,color=make))+
  geom_point() #scatter plot
#line plot geom_smooth()
ggplot(car,aes(x=width,y=price))+
  geom_smooth()
#bar graph geom_bar()
ggplot(car,aes(x=make))+
  geom_bar()+labs(title="Automobile company",x="Manufacturing 
                  Company")
#histogram plot always works on numeric column
ggplot(car,aes(x=price))+
  geom_histogram()

ggplot(car,aes(x=width))+
  geom_histogram()
ggplot(car,aes(x=width,y=price))+geom_point(color="red")+
  geom_smooth(color="green",span=0.5)
#pie chart 
#create vector
x=c(21,62,10,53)
#formula 21/(21+62+10+53)*100
percent=x/sum(x)*100
percent=round(percent,1)
#print(percent)
labels=c("London","New York","Mumbai","Singapore")
#save the file
png(file="pie_graph.png")
#plot the graph
pie(x,labels=percent,col=rainbow(length(x)))
legend("topright",
    c("London","New York","Mumbai","Singapore"),cex=0.8,
    fill=rainbow(length(x)))
dev.off()




