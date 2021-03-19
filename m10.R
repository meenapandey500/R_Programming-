#How to create a matrix (3*3)  and define a row name and column
rownames<-c("row1","row2","row3")
colnames<-c("col1","col2","col3")
A<-matrix(c(1:9),nrow=3,ncol=3,byrow=FALSE,dimnames=list(rownames,colnames))
A
print(A[3,2]) #to retrieve element at 3rd and 2nd col
print(A[2,]) #to retrieve all elements of 2nd row
print(A[,2]) #to retrieve all elements of 2nd column
