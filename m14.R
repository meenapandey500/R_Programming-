A<-matrix(c(1:9),nrow=3)  #3*3 dimension
A
class(A)
attributes(A)
dim(A)



A[c(1,2),c(2,3)] # select rows 1 & 2 and columns 2 & 3 
