data<-read.csv("f://employee.csv")
print(data)
v<-subset(data,salary==max(salary))
print(v)
#Get all the employee  working in the IT department
v<-subset(data,dept=="IT")
print(v)
v=subset(data,dept=="IT")
print(v)
print(data)
#get the employees in IT department whose salary is greater than 30000
# & logical operator
v=subset(data,salary>30000 & dept=="IT")
print(v)
print(data)
#Get the employee who joined on or after 2015
v=subset(data,as.Date(start_date)>as.Date("2015-01-01"))
#bydefault format of R-prog.  yyyy-mm-dd
print(v)
#get the employees in IT department whose salary is greater than 20000
v=subset(data,salary>20000 & dept=="IT")
print(v)
#write filtered data into a new csv file
#syntax write.csv(variable(filtered data),"new csvfile")
write.csv(v,"f://output.csv")

df=read.csv("f://output.csv")
print(df)

write.csv(v,"f://output.csv",row.names=FALSE)
df=read.csv("f://output.csv")
print(df)



