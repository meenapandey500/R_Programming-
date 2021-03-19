#Lecture 2-july-2020
#Array Data Structure in R
#To create a Array :
A<-array(1:24,dim=c(3,4,2))
print(A)
#second example : for create array
v1<-c(10,20,30,40)
v2<-c(50,60,70,80,90,100)
B<-array(c(v1,v2),dim=(c(3,3,2)))
B
#Create new array with define rowname,colname and matrix name
r1=c("Row1","Row2","Row3")
c1=c("Col1","Col2","Col3","Col4")
m1=c("Matrix1","Matrix2")
A=array(1:24,dim=c(3,4,2),dimnames=list(r1,c1,m1))
print(A)
#Access data from array 
#syntax array_name[rowindex,colindex,matrix index]
#Access the elemnet of first row and 2nd column in Matrix 1
A[1,2,1]
#Access only the 3rd row in matrix 2
A[3,,2]
#Access only the 4th column in first matrix
A[,4,1]
A
#Access the complete first matrix
A[,,1]
#Access the complete second matrix
A[,,2]
#Access the elements of 1st,3rd row and 2nd,4th column in Matrix 1
A[c(1,3),c(2,4),1]
#Access all the elements of 2nd and 3rd row in Matrix 2
A[c(2,3),,2]
#Access all the elements of 1st and 4th column in Matrix 1
A[,c(1,4),1]
#Access all the element except 2nd row and 3rd column in matrix 2
A[-2,-3,2]
