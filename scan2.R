#scan() to save data in file(text file/csv file)
data<-data.frame(x1=c(2,3,4,5),x2=c(6,7,8,9),x3=c(12,13,14,15))
#data is a user defined object
print(data)
#to write the above table in file
write.table(data,file="table1.txt",row.names=FALSE)
#Scan Text into R
data1=scan("table1.txt",what="character")
print(data1)
#Scan Text Data as List
data2=scan("table1.txt",what=list("","",""))
print(data2)
#Skip Lines with Scan Function
data3=scan("table1.txt",skip=1) #skip first line means skip col name
print(data3)

student=data.frame(rno=c(101,102,103,104),name=c("deepa","asha","renu",
                                           "geeta"),age=c(21,23,25,27))

print(student)
write.table(student,"student.csv",row.names=FALSE)
s=scan("student.csv",what="character")
print(s)
s=scan("student.csv",what=list("","",""))
print(s)

#Scan RStudio Console
data1=scan("")
print(data1)
data1[3]
sum=data1[3]+data1[6]
print(sum)
c<-length(data1) #to find the no. of elements in data1
cat("no. of values ",c)
#to sum of all elements in data1
print(data1)
#to sum of all elements in data1
sum=0
for(i in 1:c) #i=1 i<=c i=i+1
{
  sum=sum+data1[i]
}
cat("sum :",sum)



