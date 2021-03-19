#Arithmetic operations means add,subtract,multiply,divide of 2 matrix A and B
#Create First Matrix A 
A=matrix(data=1:12,nrow=4,ncol=3) #byrow=FALSE : default set
print(A)
#Create Second  Matrix B 
B=matrix(data=10:21,nrow=4,ncol=3,byrow=TRUE) #byrow=FALSE : default set
print(B)
C=A+B
cat("Sum of 2 Matrix")
print(C)
C=A-B
cat("Subtract of matrix A & B")
print(C)
C=A*B
cat("Multiply of matrix A & B")
print(C)
C=A/B
cat("Divide of matrix A & B")
print(C)