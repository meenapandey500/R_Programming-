rownames<-c("row1","row2","row3")
colnames<-c("col1","col2","col3")
A<-matrix(c(1:9),nrow=3,ncol=3,byrow=FALSE,dimnames=list(rownames,colnames))
A
#Addition of Rows and Columns
#To add row in existing matrix 
A<-rbind(A,c(12,56,89))
A
#To add col in existing matrix
cbind(A,c(45,67,80))
dim(A)<-c(1,12)  

A










#modification the existing matrix
#to change the value of cell 2nd row and 3rd column of matrix
#cell means intersection of row and column
A[2,3]<-87  #here 87 new value 
A
#to replace value of matrix on relational operator 
A[A==5]<-0
A
A[A<6]<-1
A
