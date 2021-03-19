A=matrix(data=1:9,nrow=3,ncol=3) #byrow=FALSE : default set
#or A=matrix(c(1:9),nrow=3)
print(A)
#Add new column in matrix A and create new matrix B
B=cbind(A,c(20,30,40))
print(B)
str(A)  #show the structure of matrix A
str(B)  #show the structure of matrix B