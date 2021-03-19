#use of scan()
a=scan()
print(a)
s=a[2]+a[3]
print(s)
#second use of scan()
data<-data.frame(X1=c(10,20,30,40),x2=c(50,60,70,80),x3=c(120,130,140,150))
print(data)
#write.table() ==>inbuilt function to write a data in permanent file
#syntax write.table(data,file="filename.txt",row.names=T/F)
write.table(data,file = "student.txt",row.names = FALSE)
#To read data from student.txt file
#here syntax of scan() ==>scan("filename.txt",what="datatype")
#what ==>variable /parameter/argument
data1 <- scan("student.txt", what = "character")  
#data1 user defined 
print(data1)
## Read txt file into list
data2 <-scan("student.txt", what = list("", "", ""))    
data2    
data1 <- scan("student.txt", what = "character",skip=1) #skip first line 
#data1 user defined 
print(data1)

data1 <- scan("student.txt", what = "character",skip=2)#skip first 2 line means
#skip first line and second line
#data1 user defined 
print(data1)
data1 <- scan("student.txt", what = "character",nlines=2)
#nlines ==>access no. of lines 
data1
#to accept data from user through keyword
a=scan("",what="character")
a
a[2]
a[1]
a=scan()





