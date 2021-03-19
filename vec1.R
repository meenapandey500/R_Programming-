# Create a vector : 
#1. using : operator
a<-20:30 #here start=20 and stop=30 bydefault increment by +1
print(a)
b<- -10:5 # here start=-10 and stop=5 means -10 bydefault increment +1 (-10+1=-9)
b
#To retrieve value from particular position/location/index
#means to retrieve value at first location
#index always in [ ]
a[1]
#retrieve value at 4th location
a[4]
#to retrieve values at index 4th to 8th (slicing)
a[4:8]
a[-5]

#2. Using the seq()(sequence) function ==>to create a vector
x<-seq(1,4,by=0.5) #here start=1 ,stop=4 and interval=0.5 means 1 (1+0.5) 1.5+.5
x
y=seq(1,4,by=2)
y

#3 . c()  ==>combined() ==>To create a vector
marks<-c(78,45,90,38,69,60,48)
marks  
class(marks)  
x<-c(67,89.8,90.7,45,76,45,23.56)  
x
x<-c(56,78,43,TRUE,FALSE,89,T,87) #TRUE/T=1 and FALSE=0
x
class(x)
x<-c(56,78.89,43,TRUE,FALSE,89.98,T,87)
x
y<-c(67,"anu",90.67,TRUE,56,"pankaj",FALSE)
y
class(y)
