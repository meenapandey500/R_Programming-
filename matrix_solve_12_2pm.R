#Solve two equation
#3x+2y=8
#x+y=2  
#what is value of x and y
#In above equation,Matrix A is :
A=matrix(c(3,1,2,1),nrow=2,ncol=2) #byrow=FALSE
A
B=matrix(c(8,2),nrow=2,ncol=1)
B
#solve()  ==>inbuilt function of R this is solve two linear equation
solve(A,B)
#Find inverse of A then use solve(A) %*% A
A
#find the inverse of A matrix
solve(A) %*% A






