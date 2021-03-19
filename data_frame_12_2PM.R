#dataframe means to store data in tabular form means to store data 
#in the form of rows(records/tuples) and columns(variables/attributes)
#How to create Data Frame
#with the help of vector
Id<-1:5
Id
class(Id)
Name<-c('Anu','Deepa','Pankaj','Neena','Malti')
Name
class(Name)
Age<-c(21,24,19,23,21)
class(Age)
#To create a Data Frame
student<-data.frame(Id,Name,Age)
student
class(student)
View(student) 
student
#Get structure of data
str(student)
#To display summary of each column
summary(student)
#Extracting the specific rows from a data frame
# Extracting first row from a data frame    
student[1,]
# Extracting third row from a data frame    
student[3,]
student
# Extracting last two row from a data frame       
student[4:5,]
# Extracting 1st and 3rd row corresponding to the 1st and 3th column      
student[c(1,3),c(1,3)]
student
#To add new column city in existing Dataframe student 
#Syntax : dataframename$newcolumn=c(value1,value2,...)
student$City<-c("Bhopal","Indore","Bhopal","Mumbai","Delhi")
student
#Adding row in the data frame  
#with the help of list
#list() ==>collection of same or different types of data
X<-factor(6,"NA",26,"Indore")
rbind(student,X)
student
#how many columns in data.frame
ncol(student)
##how many rows in data.frame 
nrow(student)
#to Delete  particular column in data.frame
#suppose we remove city column in student data frame
student$City<-NULL
student
# To delete a particular row 
#here to delete 2nd row
s<-student[-c(2),]
s
student
#suppose delete 3 and 5th row in student dataset
s1<-student[-c(3,5),]
s1
# TO add new row in existing dataset
student
x<-list(6,'kiran',27)
#To add new row then use rbind()
rbind(student,x)

#4-june-2020
exam=data.frame(name=c("kamal","renu","deepa","suresh","leena","pankaj"),
                score=c(45,78,98,56,48,87),attempts=c(1,NA,2,NA,1,2),
                qualify=c("yes",'no','no','no','yes','yes'))
print(exam)
#To check null values in attempts column in exam dataframe
#the use is.na() syntax : is.na(dataframename$columnname) and answer return
# in boolean form means TRUE/FALSE
print(is.na(exam$attempts))
#to count the null values in attempts column in exam dataframe
# then use sum()
print(sum(is.na(exam$attempts)))
#To delete a particular column from given dataframe
#then use function subset()
#syntax of subset() : subset(dataframe,select=-c(col1,col2,...))
#to delete name column from exam dataset
s=subset(exam,select=-c(name))
print(s)
print(exam)
#to delete multiple column means name,score column from exam dataset
s=subset(exam,select=-c(name,score))
print(s)  
#to delete a row in given dataframe
#suppose to delete 2nd row
d=exam[-2,]
print(d)  
#suppose to delete 3 and 5th record
d1=exam[-c(3,5),]
print(d1)  

print(exam)
colnames(exam)
new_exam=data.frame(name=c("rohan","yogesh"),score=c(56,89),attempts=
                      c(NA,2),qualify=c('no','yes'))
print(new_exam)
#rbind() to add new record in existing dataframe
#rbind(original dataframe,new dataframe)
exam=rbind(exam,new_exam)
print(exam)
#to delete all records in new_exam
new_exam=new_exam[-c(1,2),]
print(new_exam)
print(exam) 
#Filter apply ==>to search a particular record whose score>60
#use subset()==>subset(dataframename,condition)
subset(exam,score>60)
#to retrieve those records whose qualify=yes
subset(exam,qualify=='yes')
#to retrieve name and attempts column only of all student
exam[,c("name","qualify")]

#8-june-2020

#to call .csv file in program then use read.csv("filename.csv") 
employee<-read.csv("emp.csv")  #d://folder//file.csv
#employee user defined object which hold the data of emp.csv
print(employee)
#To display no. of columns
ncol(employee)
#to display column name
colnames(employee)
#head() to display first 6 record from top if no mention no. of records
head(employee,2) #here To display first 2 records from top
#tail() to display last 6 records from bottom if no mention no. of records
tail(employee,3)#here to display last 3 records from bottom 
print(employee$Empname) #to display all employee name
#To display Empname and salary of all employees
print(employee[c('Empname','Salary')])
print(employee)
#to display all details of 3rd and 6th employee(use indexing)
print(employee[c(3,6),])
#to display all details of 2nd,3rd and 4t employee (use slicing)
print(employee[2:4,])
employee
employee$Dept[4]<-NA #assign means replace  the NA in dept of 4th employee
employee
#apply filter 
#To display those records whose earn maximum salary
subset(employee,Salary==max(Salary))
#to display those records whose salary>60000 and work in dept=IT
#apply logical operator & 
subset(employee,Salary>60000 & Dept=='IT')
v<-subset(employee,Salary>50000 & Dept=='IT')
print(v)
#to write a data from v object to new file sel_emp.csv file
#then use write.csv(objectname,"newfilename.csv")
write.csv(v,"sel_emp.csv")

d<-read.csv("sel_emp.csv")
print(d)
#To create a matrix 
m=matrix(1:20,nrow=5)
print(m)
#To convert matrix in data frame
df<-data.frame(m)
print(df)
print(df[c('X1','X3')])
#To rename the column name





#to create a matrix
m=matrix(1:20,nrow=5)
print(m)
#to convert matrix into dataframe
df=data.frame(m)
print(df)
