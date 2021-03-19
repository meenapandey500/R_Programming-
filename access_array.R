#Naming Row,column and matrix
#For example : 
#Creates an array of two 3*3 matrices each with 3 rows and 3 columns
#we create two vectors of different lengths
X=c(20,40,70,90)
Y=10:25 
print(X)
print(Y)
cname=c("col1","col2","col3") #define column name
rname=c("Row1","Row2","Row3")#define row name
mname=c("Matrix1","Matrix2")
#Take these vectors as input to the array
A=array(c(X,Y),dim=c(3,3,2),dimnames=list(rname,cname,mname)) #byrow=FALSE 
print(A) 
#Access data from array 
#Access the all columns of second row of the first matrix of the array
print(A[2,,1])  #arrayname[rowindex,colindex,matrixindex]
 #Access the element in the second row and 3rd column of the 2nd matrix
print(A[2,3,2])

#Access the all rows of 3rd columns of the second matrix of the array
print(A[,3,2])

#Access all rows and columns of matrix1 from array A
print(A[,,1])





