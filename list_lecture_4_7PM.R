#list : is a data structure of R .list is similar as object .
#object means collection of data which are same or different types of data .
#vector,matrix ,list,int,string,float
#list( ) : 
#create the list containing a vector,a matrix and list
X=list(c("Anu","Kamal","Ritu"),matrix(c(23,45,67,89,30,54),nrow=3),list("read","singing","dance"))
print(X)
#Give names to the element in the list ,use inbuilt function names()
names(X)<-c("Student_Name","Marks","Hobbies")
print(X)
#Add element at the end of the Existing list
X[4]<-"NM College Mumbai"
print(X)
#to retrieve name of all students from list then use name(give colname) as a index
print(X["Student_Name"])
#To access marks of all students
print(X["Marks"])
#Access Name of 2nd student from list X
print(X[["Student_Name"]][2])
#Access Marks of all subjects of 2nd student
print(X[["Marks"]][2,])

print(X)
#To update the value at particular index
#Update the 4th element means to change the college name (take the different 
#college of all student)
X[[4]]<-c("NM College","LNCT College","Oriental College")
print(X)
#Remove last element from list X
X[4]<-NULL
print("After Remove element : List Are ")
print(X)

