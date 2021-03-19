#Array creation with define the rowname,colname and matrix name
rname<-c("R1","R2","R3")
cname<-c("A","B","C","D")
mname<-c("Matrix1","Matrix2")
A<-array(1:24,dim=c(3,4,2),dimnames=list(rname,cname,mname))
print(A)
#to retrieve element from array 
#to print the third row of the second matrix of the array
print(A[3,,2])
#To print the element in the first row and 3rd column of the first matrix 
print(A[1,3,1])
#to print the 2nd matrix 
print(A[,,2])
#Accessing Subset of a R Array Elements
#to access element from array 3rd & 4th column of 1st and 2nd row of matrix 1)
print(A[c(1,3),c(1,4),1]) 
#to print the 2nd matrix 
print(A[,,2])
# Access All the element of 2nd and 3rd row in Matrix 2.(subset of array)
print(A[c(2,3),,])
# Access All the element except 2nd row and 3rd Columm in Matrix 2.
print(A[-2,-3,2])
#to retrieve all rows of 2nd and 3rd column of matrix 2 from array
print(A[,c(2,3),2])


