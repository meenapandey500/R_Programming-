A=matrix(data=1:9,nrow=3,ncol=3) #byrow=FALSE : default set
#or A=matrix(c(1:9),nrow=3)
print(A)
#Add new row in existing matrix A and create a new matrix B
B=rbind(A,c(10,11,12))
print(B)
print(A)
#dIfference between MAtrix A and B :  use str( ) means to show structure of matrix
cat("Matrix A : ")
print(str(A))
cat("Matrix B : ")
print(str(B))
