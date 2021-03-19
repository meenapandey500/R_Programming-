#Lecture 7-july-2020
#How To create a DataFrame
#Syntax :  objectname=data.frame(col1=c(val1,val2,..),col2=c(val1,...),..)
#Create first vector rno,name,age,city
rno=c(101,102,103,104)
name=c("Anu","Seema","Rekha","Tina")
age=c(23,24,21,25)
city=c("Bhopal","Mumbai","Pune","Nasik")
#create data frame with the help of vector
student=data.frame(rno,name,age,city)
print(student)
#print the structure of data frame student then use inbuilt function str()
str(student)
#By default, data frame returns string variables as a factor
#Access data from dataframe 
print(student)
#access all details means all columns of 2nd row 
student[2,] #dataframename[rowindex,colindex]
#cell means intersection of row and column
student[1,2]#select row 1 in 2 column
#slicing [from:to,from:to]
student[1:3,] #access all details of rows 1 to 3
#access 2nd column of all students
student[,2]
#select rows 1 to 3 and columns 3 to 4
student[1:3,3:4]
student[,c('rno','age')]
#Append a column to data frame means to add new column to data frame
#create a new vector 
salary=c(23000,21000,18000,14500)
student$salary=salary
print(student)
#Note : 1. Column name should be unique
#2. column  name should not be null
#3. row index should not be repeated ,always unique
#Select a column of a data frame
student$name  #access name of all students
student$age #access age of all students
print(student)
#To display those records whose age<24
subset(student,age<24)
#To display those records whose age<24 and city='pune'
subset(student,age<24 & city=='Pune')
#To display name,age and salary of those student whose age<24
subset(student,age<24,select=c(name,age,salary))


