#To load emp.csv file
data1=read.csv("emp.csv")
data1
nrow(data1)#to show no. rows
ncol(data1) #No. of columns
colnames(data1) #show column name
#To access empname of all employees
data1$Empname
#To display multiple columns
#to display Empname and salary of all employees
data1[c('Empname','Salary')]
#Access multiple rows
#To display all details of 3rd and 6th employee(using index)
data1[c(3,6),] #data1[row,col]
#To display all details of 2nd,3rd and 4th employees(using slicing)
data1[2:4,]
#To display those records whose earn highest salary
#Then use subset() ==>to filter or retrieve the record according to
#condition
subset(data1,Salary==max(Salary)) #if min salary then min(Salary)
#To display those records whose salary>60000 and work on IT dept
X=subset(data1,Salary>=50000 & Dept=='IT')
X
#To write a data of X to new file suppose give a file name sel_emp.csv
#Then use inbuilt function write.csv()
#syntax : write.csv(object,"newfilename.csv)
write.csv(X,"sel_emp.csv",row.names = FALSE)
#To read data from sel_emp.csv
d=read.csv("sel_emp.csv")
print(d)
data1
#order() ==>inbuilt function ==>to Arrange records in ascending /descending
#order according to field
data1[with(data1,order(Empname)),]
#To delete a particular column from dataset
#suppose delete Dept column from dataset
s=subset(data1,select=-c(Dept))
s
data1
#suppose to delete a row
#for eg. to delete 2nd row
data1[-2,]
#suppose delete 3rd and 5th row from dataframe
data1[-c(3,5),]
data1
#to arrange column in ascending order
data1[,order(names(data1))]

#To display name,age and salary of those student whose age<24
subset(student,age<24,select=c(name,age,salary))

#Lecture 13-july-2020
data1=read.csv("emp.csv")
#To display Empname and Salary of those employee whose work on Dept=IT
subset(data1,Dept=="IT",select=c(Empname,Salary))
#syntax : subset(dataframename,condition,select=c(column1,column2,...))


