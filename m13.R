A<-matrix(c(1:6),nrow=2)  #2*3 dimension
A
#to change the dimension of Matrix A 3*2
dim(A)<-c(3,2)  #here 3 rows and 2 columns
#dim() inbuilt function 
A
A[-1,] #select all rows except first 
A
A[c(3,2),] #to retrieve first 3rd row and then 2nd row 
A
