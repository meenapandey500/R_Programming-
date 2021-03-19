#to perform arithmetic operation in matrix
A<-array(1:24,dim=c(3,4,2))
print(A)
M1<-A[,,1] #to converts array A into matrix M1
M2<-A[,,2]
print(M1)
print(M2)
Z<-M1+M2
print("Sum of matrix ")
print(Z)
X<-M1-M2
print("Subtract of 2 matrix : ")
print(X)

