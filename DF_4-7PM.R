#Create DAtaFrame with the help of Vector
id<-1:5 
name=c("Anu","Seema","Yogesh","kamal","Lalita")
age<-c(23,21,24,25,26)
student=data.frame(id,name,age)
print(student)
print(class(student)) #to show the datatype of student 
#View(student)
#to show the summary of data frame student
summary(student)
#Get structure of data use str( )
str(student)

#how many rows means record in data.frame student  then use nrow() 
print(nrow(student))

#how many Columns in data.frame student  then use ncol() 
print(ncol(student))

print(colnames(student)) #to display column name of student data frame
print(rownames(student)) #to display row name of student data frame

#Access data from data frame

#Access First two rows 
print(student[1:2 , ])

#Access 2nd and 5th row with 1st and 3rd column
print(student[c(2,5),c(1,3)])
#access only 3rd col of 2nd row means access only age of 2nd student
print(student[2,3])
#OR
print(student[2,"age"])


#Create the dataframe : - 
#SYntax : object of data frame=data.frame(colname1=value1,... .colname2=v1,v2...)
employee<-data.frame(emp_id=c(101:105),emp_name=
          c("John","Anil","Deepak","Suresh","Kabir"),
          salary=c(50200,32000,43900,25890,19000),
doj=as.Date(c("2017-10-24","2019-02-19","2018-05-14","2015-06-10","2012-12-13")),
stringasFactors=FALSE)
print(employee)
#To display the structure of data frame employeee then str( )
print(str(employee))

#Access specific columns of all employees 
#To access emp_name and salary of all employees and temporary hold in new result
#dataframe
result<-data.frame(employee$emp_name,employee$salary)
print(result)

print(employee)

#Add the department column in existing Data Frame employee
# syntax : dataframename$newcolumn=c(...,..., ... )
employee$dept=c("Sales","Marketing","HR","HR","IT")
print(employee)

#Add new Row means New record in exisitng data frame employee
newrow=data.frame(emp_id=c(106,107),emp_name=c("Tina","Vasundhara"),
          salary=c(23000,32000),doj=as.Date(c("2020-02-12","2020-04-23")),
          stringAsFactors=FALSE,dept=c("IT","sales"))

print(newrow)
#Bind the two dataframe means merge both data frame employee and newrow
rbind(employee,newrow)




