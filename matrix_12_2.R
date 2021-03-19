#matrix : to create a matrix
v<-1:10 #to create a vector with the help of 
#sequence numerical vector lower limit=1 and upper limit=10
print(v)
matrix(v)
v1<-11:20
print(v1)
A<-matrix(v1)
print(A)
#to retrieve value from matrix at location(index) 4,1 means first column of 4th row 
#To retrieve data through indexing
A[4,1] 
A[,1] # to retrieve all rows of first column
# To retreive data through slicing [from index:end index]
A[4:8,1] # To retrive data of first col of 4th row to 8th row

V<-11:20
print(V)
#to create a matrix with the help of vector V with 2 rows (2*5=10)
A<-matrix(V,nrow=2)
print(A)
# to rerieve data at index 4th col of 2nd row
# Cell means intersection of row and column
A[2,4]
#to retrieve data of all columns of 2nd row
A[2,]
#To retrieve data of all rows of 4th column
A[,4]
#to retrieve data at slicing[from:to(row),from:to(col)]
# To retrieve data at 3rd,4th and 5th col of 2nd row
A[2,3:5]

V<-11:20
print(V)
#to create a matrix with the help of vector V with 2 rows (2*5=10)
A<-matrix(V,nrow=2,byrow=TRUE) #bydefault byrow =FALSE if no mention this parameter
print(A)
#Another way To create matrix
M<-matrix(c(1:9),nrow=3,ncol=3,byrow=T)
print(M)
M<-matrix(c(1:9),nrow=3,ncol=3,byrow=F)
print(M)
#to define row name and col name(matrix create)
rowname<-c("Row1","Row2","Row3")
colname<-c("Col1","Col2","Col3")
M<-matrix(c(1:9),nrow=3,ncol=3,byrow=T,dimnames=list(rowname,colname))
print(M)
M[2,2]
#if sum of 2 matrix A and B then row and col of both matrix are same
A<-matrix(c(4:9),nrow=2) #2*3
print(A)
B<-matrix(c(9:14),nrow=2) #2*3
print(B)
A+B
A*B
A/B
#2-06-2020
A=matrix(c(1:4),nrow=2,byrow=T)
B=matrix(c(5:8),nrow=2,byrow=T)
print(A)
print(B)
A%*%B
A*B
#Matrix and scalar operation
print(A)
A+5
A*3
A/4
#Comparison operation
print(A)
print(B)
print(A>B)
print(A<B)
print(A==B)
#Matrices functions
mat=matrix(c(15:20),nrow=2)
print(mat)
#to define the rowname in existing matrix==>
#use inbuilt function rownames(matrixname exist matrix)
rownames(mat)=c("Deepa","Rekha")
mat
#to define the columnname in existing matrix==>
#use inbuilt function colnames(matrixname exist matrix)
colnames(mat)=c("Math","Science","English")
mat
#rowSums()  ==>inbuilt function to sum of all values row wise
rowSums(mat)
#colSums()==>to column wise sum
colSums(mat)
rowMeans(mat) #to find the average rowwise
colMeans(mat)#to find the average colwise
#rbind() function is used to bind a new row
mat
Kamal=c(20,17,19)
#to add new record kamal in existing matrix
mat=rbind(mat,Kamal)
print(mat)
Total=rowSums(mat)
#To add new column in existing matrix
mat=cbind(mat,Total)
mat
percent=rowMeans(mat)
mat=cbind(mat,percent)
mat
# Indexing # mat[row,col]
mat
mat[1,3]
mat[3,4]
mat[1,] #to display all details of first student
mat[,4]#to display total col(4th) of all records 
mat[c(1,3),c(2,3)] #to shoe detail of 2nd and 3rd col of 1st and 3rd student

#slicing
mat
mat[2:3,2:4]#display 2nd,3rd,and 4th column of 2 and 3rd student




