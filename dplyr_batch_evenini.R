install.packages("dplyr")
data() #to display all datasets already store in system

library(dplyr) #To load dplyr package
library("datasets")#To load datasets package
df<-data(iris) #to load dataset iris
print(df)
summary(iris)
#Sample() 
#To return 5 random rows
index<-sample(1:nrow(iris),5) #nrow() no. of rows
#index user defined object
index
iris[index,]  #dataset[row,col] to display all details of 
#randomly row which store in index
#Table()
#To find the frequency distribution of column species in 
#iris table
freq=table(iris$Species)
print(freq)
#Data Manipulation in R with dplyr packages
#To load  dplyr package
library(dplyr)
#To load datasets package
library(datasets)
#to load iris dataset
data(iris)
colnames(iris) #to display all column names of iris dataset
#select()
# To select the following columns 
#syntax of select
#object<-select(datasetname,columnname1,col2,...)
s1<-select(iris,Sepal.Length,Sepal.Width)
print(s1) # to display all records of Sepal.Width and Sepal.Length
head(s1)#to display first 6 records
colnames(iris)
#To select all columns from Sepal.Length to Petal.Width
s2<-select(iris,Sepal.Length:Petal.Width)
head(s2)
colnames(iris)
#To select columns from 3rd to 5th with numeric indexes 
s3<-select(iris,c(3:5))
head(s3)
#To select columns 3rd and 5th with numeric indexes 
s4<-select(iris,c(3,5))
head(s4)
tail(s4) #to display last 6 records from dataset
#We use(-)sign with column means to hide a particular column 
s5<-select(iris,-Sepal.Length,-Petal.Width)
#To hide Sepal.Length and Petal.Width
head(s5)
#Filter() function==>to display a particular record according
# to condition
#syntax of filter
#object=filter(datasetname,condition)
#to retrieve those records whose species = setosa
f1<-filter(iris,Species=="setosa")
head(f1)
print(f1)
library(dplyr)
df<-read.csv("f://company_sales_data.csv")
#df is a user defined object
print(df)
colnames(df)
#to display the all details of 3rd col to 6th col
a1<-select(df,c(3:6))
head(a1)
#to retrieve those records whose value of  facewash>1300
a2<-filter(df,facewash>1300)
print(a2)


#to retrieve those records whose value of  facewash>1300 and 
#facecream>2500

a3<-filter(df,facewash>1300 & facecream>2500)
print(a3)
#to retrieve month_number facewash and  facecream of those records
#whose value of facewash>1300
# %>% pipeline
df %>% 
  select(month_number,facewash,facecream) %>%
    filter(facewash>1300)
#or
d<-filter(df,facewash>1300)
print(d)
d1<-select(d,month_number,facewash,facecream)
head(d1)
#or
z<-select(filter(df,facewash>1300),month_number,facewash,facecream)
head(z)



