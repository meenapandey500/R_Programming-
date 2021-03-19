#Lecture 7-july-2020
#Arithmetic operations on Array
A=array(1:24,dim=c(3,4,2))
print(A)
#Access all elements of all rows and cols of first matrix
X=A[,,1]
#Access all elements of all rows and cols of second matrix
Y=A[,,2]
X
Y
#Add 
X+Y
X-Y
X*Y
X/Y
#apply() in Array 
v1<-c(5,9,3) #To create a first vector
v2<-c(10,11,12,13,14,15) #to create a second vector
A<-array(c(v1,v2),dim=c(3,3,2))
print(A)
apply(A,c(1),sum) #row wise sum if c(1)
apply(A,c(2),sum) #column wise sum if c(2)
#find mean row wise
apply(A,c(1),mean)
#find columnwise mean
apply(A,c(2),mean)
#find max/min








