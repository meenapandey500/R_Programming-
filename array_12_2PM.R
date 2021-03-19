#To create a Array
#Creating two vectors of different lengths  
v1<-c(2,5,6)
v2<-c(5,7,8,9,3,2)
#Taking these vectors as input to the array   
a<-array(c(v1,v2),dim=c(2,3,2))#here (2,3,2) means 2 means row size,3 means col size
# and 2 means no. of matrix bydefault byrow=False
print(a)
 
#Naming rows and columns amd matrix name
v1<-c(2,5,6)
v2<-c(5,7,8,9,3,2)
rname=c("Row1","Row2","Row3")
cname=c("Col1","Col2","Col3")
mname=c("Matrix1","Matrix2")
a<-array(c(v1,v2),dim=c(3,3,2),dimnames=list(rname,cname,mname))
print(a)
#Accessing array elements through indexing 
a[1,3,2] # to access value at 1st ,2nd col from matrix 2
a[3,2,1] #to access value at 3rd row,2nd col from first matrix
#Accessing array elements through slicing
a[2:3,1:2,1] # to show element at 2 and 3 rd row and 1st and 2nd col of matrix 1
#to print the 2nd matrix means to display all element of 2nd matrix 
print(a[,,2])

# Access All the element of 2nd and 3rd row of both matrix.(subset of array)
print(a[c(2,3),,])  #a[row,col,matrixname]

#to retrieve all rows of 2nd and 3rd column of matrix 2 from array
print(a[,c(2,3),2])
# Access All the element except 2nd row and 3rd Columm in Matrix 2.
print(a[-2,-3,2])
#use apply()
v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
A<-array(c(v1,v2),dim=c(3,3,2))
print(A)
#use apply to calculate the sum of the rows across all the matrices .
z<-apply(A,c(1),sum) #margin 1==>row wise and 2 ==>columnwise
print(z)
z<-apply(A,c(2),sum) #sum of columnwise
print(z)

#03/06-2020

v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
A<-array(c(v1,v2),dim=c(3,3,2))
print(A)
#use apply to calculate the mean of the rows across all the matrices .
z<-apply(A,c(1),mean) #margin 1==>row wise
print(z)
z<-apply(A,c(2),mean) #margin  2 ==>columnwise
print(z)
#to sum of 2 matrix
X=A[,,1] # to extract all values of first matrix from Array A to X
Y=A[,,2]# to extract all values of second matrix from Array A to Y
print(X)
print(Y)
X+Y
X*Y
X %*% Y

