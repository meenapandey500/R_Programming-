#lecture 6-7-2020
#Creating a List
#Create a list containing strings,numbers,vector and a logical
d<-list("Red","Green",c(21,23,45),TRUE,51.45,790.89,FALSE)
print(d)
#access value from list
#access element at first index
d[1]
#access element at 3rd index
d[3]
#To create a list containing a vector,a matrix and a list
X<-list(c("Jan","Feb","Mar"),matrix(c(1:9),nrow=3),list("green",12,3.6))
print(X)
#Give names to the elements in the list X then use inbuilt function names()
names(X)<-c("Month","Matrix A","Inner List")
print(X)
#Access the first element from list
print(X[1])
#or
print(X$Month)
print(X$Month[1])
print(X$Month[2])
#or
print(X[[1]][1])
#Access the second element from list
print(X$`Matrix A`)
#Access the third element from list
print(X[3])
#Manipulating List Element means To add new element ,To remove element 
#from list ,To update the value of list
#Add Element at the of list
print(X)
X[4]="Meena Pandey"
print(X[4])
X
#To remove element at location 4th
X[4]<-NULL
X
#cross check
X[4]

#Update the 3rd element(3rd index)
X[3]="Itvedant"
X[3]
X
#Merging Lists : means to join 2 or more list 
L1=list(1,2,3)
L2=list("Apple","Orange","Potato","Garlic")
L1
L2
M=c(L1,L2)
print(M)
length(M)#To find the no. of elements
#Converting List to vector then use inbuilt function unlist()
#List ==>behaviour ==>non-numeric means string type
A<-list(1:5)
A
typeof(A)
B<-list(10:14)
B
typeof(B)
A+B
#Converts the lists to vectors
v1<-unlist(A)
v2<-unlist(B)
result=v1+v2
result
v1
v1+5
#Creating list from another way 
A=list("Name"="Meena","City"="Mumbai","Mobile"=768998909)
print(A)
A$Name
A$City

