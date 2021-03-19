# Write a program to store rollno,name,age and marks of 3 subjects
# and find out total and percent
r.no=as.integer(readline(prompt="Enter Roll no. : "))
name=readline(prompt="Enter STudent Name : ")
age<-as.integer(readline(prompt="Enter Age : "))
phy=as.numeric(readline(prompt="Enter MArks of physics : "))
chem=as.numeric(readline(prompt="Enter MArks of chemistry : "))
maths=as.numeric(readline(prompt="Enter MArks of maths : "))
total=phy+chem+maths
per=total*100/300
cat("Total : ",total)
cat("Percent : ",per)