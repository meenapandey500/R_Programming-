#install.packages("dplyr")
library(dplyr)
#data() # R provides inbuilt csv file ,data() inbuilt function
# to show all .csv file
#Titanic  dataset which is csv file
#To load Titanic data set 
#objectname=data.frame(Titanic)
data=data.frame(Titanic)
print(data)
#select() : to select class and age of all passengers
s<-select(data,Class,Age)
print(s)

#To select all the columns except a specific column , use the "-"(subtract)
#operator 
#To access all columns excepts a Survived column of first 4 passengers
head(select(data,-Survived),4) #head() to display first 4 record in R 

#To select a range of columns means by Class to Age,use the : (colon)operator
select(data,Class:Age)

#To select all columns that start with the character string "S", then use 
#inbuilt function starts_with()
select(data,starts_with("S"))
#ends_with("string")

#2. filter : select row means to access particular ro according to condition
#To access those records whose Sex="Male" means to show all details of 
#only Male passengers
#syntax of filter : filter(data,condition)
filter(data,Sex=="Male")
#Access those records whose Sex="Male" and Age="Child" means and logical opertor
filter(data,Sex=="Male",Age=="Child") #here , is used logical operator and

#Automobile_data.csv

#To load csv file
df=read.csv("Automobile_data.csv")
head(df)
#to show all details of car which company name or made by bmw
filter(df,make=="bmw")

library(dplyr) #call library 
#Automobile_data.csv

#To load csv file
df=read.csv("Automobile_data.csv")
#df user defined dataframe (2D array means tabular form)
head(df)
#To access those records whose fuel.type=gas and body.style=sedan
filter(df,(fuel.type=="gas")&(body.style=="sedan"))
# %in% means to access details of those cars whose manufacturing's
#company means make = bmw or  audi  or fuel.type=diesel
filter(df,make %in% c("bmw","audi")|fuel.type=="diesel")

#to access all details of cars except following manufacturing company
#audi ,bmw ,toyota 
filter(df,!make %in% c("audi" ,"bmw" ,"toyota"))

#mutate() : inbuilt function of dplyr library
#Create a new variable/column 
#means its add new column in existing data frame at last
head(df)
x=mutate(df,Area=width*height) #Area new column /variable to add in df at last
print(x)

#To rename the column name means to change the name of column ,
#use rename() : inbuilt function of dplyr library 
#syntax : rename(df,newcolumnname=existing column name)
#for eg. change the column make with company
rename(df,company=make)
#regular expression : grepl in r
#We are looking for records where in column body.style contains "hatch" in
#their name.
#syntax : grepl("word", columnname)
filter(df,grepl("hatch",body.style))
#summarise( ) inbuilt function dplyr library
#apply statistics and mathmatical function which are apply on 
#numerical columns
#mean(),median(),sum( ),max(),min() 

#find the sum of price column of all cars
summarise(df,sum_price=sum(price) )
#find the mean(),median(),sum( ),max(),min()  of price column of all cars

summarise(df,sum_price=sum(price),mean_price=mean(price),
          median_price=median(price),max_price=max(price),min_price=min(price) )
head(df)
#summarise_at() function apply multiple columns(numerical type)
#old version of dplyr library
summarise_at(df,vars(price,width,height),funs(n(),mean,median))
#funs() inbuilt parameter of summarise_at , funs() itself function, nested
#function 
#n() : total no. of records

#same command in new version of dplyr library
summarise_at(df,vars(price,width,height),list(no_of_record=~n(),
                                      Mean_of=mean,Median_of=median))

#Alternative method(new version)
summarise_at(df,vars(price,width,height),list(~n(),~mean(.),~median(.)))
#arrange()  inbuilt function of dplyr library

#create dataframe : student
student=data.frame(rollno=c(101,102,103,104),name=c("pankaj","asha","kiran","raju"),
                   phy=c(69,78,69,59),
                   maths=c(67,89,80,76),
                   hin=c(67,90,87,65),eng=c(80,75,85,90))
print(student)
#to arrange records in ascending order according to name
arrange(student,name) #arrange(dataframe name,column name) by default ascending order
#to arrange records in descending order according to name then use desc(columnname)
arrange(student,desc(name))


#create data frame  of student
student<-data.frame(name=c("suresh","deepak","anu","sunil","rekha","yogesh"),
                    age=c(21,23,24,22,23,24),city=c("mumbai","nasik","pune","pune",
                     "mumbai","indore"),phy=c(67,89,90,60,50,70),chem=c(90,45,67,
                        NA,92,NA),maths=c(NA,60,70,90,60,50))
print(student)
#summarise_at() used in multiple columns
summarise_at(student,vars(phy,chem,maths),funs(mean,median))#bydefault na.rm=FALSE

summarise_at(student,vars(phy,chem,maths),funs(mean,median),na.rm=TRUE)

#new version of dplyr library
summarise_at(student,vars(phy,chem,maths),list(~n(),missing=~sum(is.na(.))))

#old version of dplyr library
summarise_at(student,vars(phy,chem,maths),funs(n(),missing=sum(is.na(.))))

#summarise_if() inbuilt function of dplyr library , this function allows you to 
#summarise conditionally
#summarise() work only numerical columns of data frame
#for eg.
summarise_if(student,is.numeric,funs(mean,median,max,min,sum),na.rm=TRUE)

#Alternative method
#First store all numerical type column from existing dataframe into new dataframe
#how  : use sapply()
print(student)
s=student[sapply(student,is.numeric)] #s new dataframe which hold numerical type 
#column from student dataframe
print(s)
#use summarise_all() meaans to apply this function in all columns of dataframe s
summarise_all(s,funs(mean,median,sum),na.rm=TRUE)

#reorder variables/columns : define in dplyr library
print(student)
#keeps column city in the front and the remaining columns then use everything()
#syntax : select(dataframename,columnname,everything())
select(student,city,everything())
print(student)

#to display those records whose city=mumbai
filter(student,city=="mumbai")
#to display name and marks of phy and chem of all students
select(student,name,phy,chem)

#to display name and marks of phy and chem of those student who lives in mumbai
#means whose city=mumbai  means use filter() and select() both of dplyr library
#then use pipe operator %>%
#dataframe name %>% select(col1,col2,..)%>%filter(condition)
d=student%>%select(name,phy,chem,city)%>%filter(city=="mumbai")
select(d,-city) #to display name,phy and chem except city


#to display name and marks of phy and chem of those student whose phy>=80
#without using pipe operator

#first first select()
d1=select(student,name,phy,chem)
print(d1)
filter(d1,phy>=80)

#to display name and marks of phy and chem of those student whose phy>=80
# using pipe operator
student%>%select(name,phy,chem)%>%filter(phy>=80)

#pipe operator
library(dplyr)

#To load csv file
df=read.csv("Automobile_data.csv") #df user defined dataframe
head(df)
#to access first 6 records of make, fuel.type  ,body.style,width and height 
#of car
r=select(df,make, fuel.type  ,body.style,width,height)
#r user defined dataframe 
head(r)
#use pipe operator
df%>%select(make, fuel.type  ,body.style,width,height)%>%head()

#y=f(x) can be rewritten as x >%> f means argument >%> function()
#for example find log(x) where x=4
x=4
x%>%log()
#or log(x)
log(x)
#or
x%>%log()
#example : 2 
pi  #inbuilt command of R programming
#after decimal 1 digit then use round()
round(pi,1)
#or use pipe operator
pi %>%round(1)

#create a matrix 
X<-matrix(1:12,3,4) #no. of rows=3 and no. of cols=4
X
#Return the maximum value from matrix X
max(X,nrow(X),ncol(X))
#use pipe operator
X%>%max(nrow(X),ncol(X))

#tidyr : inbuilt package pf R progr. 
# tid means tidy 
#the sole purpose of tidyr package is to simplify the process of creating 
#tidy data 
#for eg. first_name  , Last_name  but name : first_name+last_name : unite()
#or address : Bhopal,462025 :- city :Bhopal pincode : 462025 means separate()
#tidyverse
#but fisrt install the package tidyr : -

#install.packages("tidyr")
#call package tidy
library(tidyr)



