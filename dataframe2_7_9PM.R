#Create first vector rno,name,age,city
rno=c(101,102,103,104)
name=c("Anu","Seema","Rekha","Tina")
age=c(23,24,21,25)
city=c("Bhopal","Mumbai","Pune","Nasik")
#create data frame with the help of vector
student=data.frame(rno,name,age,city)
print(student)
#To display no. of rows means no. of records in dataframe student 
#Then use inbuilt function nrow(dataframe)
nrow(student)
#To find the no. of columns in dataframe student then use ncol(dataframe)
ncol(student)
colnames(student) #to display column name of existing dataframe
#How to modify a data frame 
#To change age of row no. 3 with 22
student[3,"age"]=22
student
#To add new column in existing data frame student
cbind(student,salary=c(50000,25000,78000,45000))
#to display the inbuilt dataset in R then use data()
data()  #inbuilt function
A<-airquality 
print(A)
View(A) #To show sheet of dataset 
print(A)
nrow(A)
head(A)#To display first 6 records
head(A,10) #To display first 10 records
tail(A) #To display last 6 records
tail(A,8)
str(A) #To display the structure of dataset
#check the datatype
is.numeric(34)
is.character(34)
is.character("34")
#To check null value
sum(is.na(A))#To count the total null values of dataset airquality
sum(is.na(A$Ozone)) #To count the total null values of Ozone column
#dataset airquality
sum(is.na(A$Solar.R))
sum(is.na(A$Wind))
print(A)
#to delete those rows whose null value found means NA then use omit()
Y=na.omit(A)
print(Y)
A
sum(Y$Ozone)
sum(A$Ozone)
mean(Y$Solar.R)
max(Y$Solar.R)
student
data1=data.frame(State=c('Florida FL','UttarPradesh UP','MadyaPradesh MP',
                         'Chattisgarh CG','Newyork NY'),
                 Score=c(62,21,47,12,74))
data1
#install.packages("stringr")
library(stringr)#call library 
#Convert to upper case in R dataframe
data1$state_upper=toupper(data1$State)
data1
#tolower()
data1$state_title=str_to_title(data1$state_upper)
#str_to_title() ==>define in stringr library
data1
n=str_count(data1$State,"a")
print(n)
data1$n=str_count(data1$State,"a")
data1
View(data1)
nrow(data1)
head(data1,2)
tail(data1,1)
colnames(data1)


















