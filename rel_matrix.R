#Use of Relational Operator ( > , < ,>= , <= , == ,!=)
A=matrix(data=1:12,nrow=4,ncol=3) #byrow=FALSE : default set
print(A)
#to access those data whose value of matrix A >6
print(A[A>6]) #matrixname[index] for eg. matrixname[condition]
#to access those data whose value of matrix A <6
print(A[A<6])
#to access those data whose even no means divisible by 2
print(A[A%%2==0]) #remainder in R  %% 
print(A)
#To replace the data with 15 whose data of matrix A >9
A[A>9]<-15
print("After Replace")
print(A)