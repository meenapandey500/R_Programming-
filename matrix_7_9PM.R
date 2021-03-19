#Lecture 25-06-2020
#Matrix :
#To create a matrix with the help of vector
v<-10:20  #we create a vector with : column 
v
matrix(v) #11*1
v<-1:10   #1 2 3 4 5 6 7 8 9 10
matrix(v) #10*1   
#To create a two dimensional matrix
matrix(v,nrow=2) #nrow means no. of rows =2 bydefault byrow=FALSE
matrix(v,nrow=2,byrow=TRUE)
a<-matrix(c(1:9),nrow=3,ncol=3,byrow=T)
print(a)   
#Access data of 2nd rows means all details means columns of 2nd row
a[2,] #a[rowindex,colindex]
a[ ,3] # to access all rows of 3rd column



#Lecture 1-july-2020
a<-matrix(c(1:9),nrow=3,ncol=3,byrow=T)
print(a)  
#Access data from all columns of 3 and 2 row 
a[c(3,2),]
#select all rows except first row
a[-1,]
#select all columns except first columns(all rows)
a[,-1]
#select 2,3 rows and 1,3 columns
a[c(2,3),c(1,3)]
#To create a new matrix with rows name and column names
#syntax :matrix(data,nrows= ,ncols= ,byrow=T/F,dimnames=)
#dimnames inbuilt parameter which define the row name and col name
#dimnames=list(c(rowname1,rowname2,...),c(col1,col2,...))
X=matrix(c(1:9),nrow=3,ncol=3,byrow=T,dimnames=list(c("A","B","C"),c("X","Y","Z")))
print(X)
colnames(X) #show column name of matrix X 
rownames(X)#show row name of matrix X
#It is possible to change row name and colname
colnames(X)=c("M1","M2","M3")
rownames(X)=c("R1","R2","R3")
X
#Another way of creatin a matrix is by using function rbind() and cbind() 
#rbind() means row bind and cbind() means column bind
A=cbind(c(1,2,3),c(4,5,6))
A
B=rbind(c(4,5,6),c(7,8,9),c(12,13,14))
colnames(B)
colnames(B)=c("X","Y","Z")
B
colnames(B)
rownames(B)=c("R1","R2","R3")
B
B
cbind(B,c(20,34,26)) #Add new column in existing matrix B
#To add new row at the end in existing matrix use rbind()
rbind(B,c(56,78,90))
#To delete permanently 3rd row from matrix B
B=B[-3,]
B
#To delete permanently 2nd column from matrix B
B=B[,-2]
B
M=matrix(c(11:20),nrow=5) #create matrix ==>dimension 5*2 means 5 rows and 2 columns
M
#To change the dimension of matrix M  -->2*5 then use inbuilt function dim(matrixname)
dim(M)=c(2,5)
M
#modify the element in matrix
# To modify the value at first row and third column with 25
#Modify element means to change the old value to new value of particular cell
M[1,3]=25 
M
# To change value with 0 where value of matrix M >15
M[M>15]=0
M
#Arithmetic operations in matrix 
v1<-c(20,30,40,50) #Create a Vector
A<-matrix(v1,nrow=2,byrow=T)
A
A+5  #scaler operation
A-1
A*6
A/2
A%%6
A
#LOgical condition
A>20  #Return answer T/F
A==20
#multiple condition with logical operator & / |
A
A>20 & A<40 
A>20 && A<40
A>20 | A<40
A
t(A) #Transpose of matrix
#LECTURE dATE : 2-JULY-2020
#Arithmetic operation of 2 or more matrix
A<-matrix(c(1:4),nrow=2,byrow=T)
B<-matrix(c(5:8),nrow=2,byrow=T)
A
B
A+B
A-B
A*B #Cross multiplicaTION
A %*% B #Dot multiplication
A/B
#Simple example of matrix
#Naming rows and columns of matrix
v1<-c(56,78,81)#Create vector
v2<-c(79,67,86)#create vector
#Combine both vectors means merge 2 vectors and create a new vector scores
scores<-c(v1,v2)
print(scores)
#Convert the new vector scores into matrix with nrow=2 ,
#since we have 2 students and fill the matrix with rows, with byrow=TRUE
M<-matrix(scores,nrow=2,byrow=T)
print(M)
#Lets create two vectors for row and column names
students<-c('Prakash','Suresh') #row name
subjects<-c('Math','Science','English') # colname
#Define name rows and columns of matrix using rownames() and colnames() 
rownames(M)<-students
colnames(M)<-subjects
print(M)
#functions 
rowSums(M)#sum element row wise
colSums(M)
colMeans(M) #average
rowMeans(M)
sum(M) #to sum all elements of matrix
mean(M)#To find the  average  of all elements of matrix
summary(M)




