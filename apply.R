v1<-c(5,9,3)
v2<-c(10,11,12,13,14,15)
A<-array(c(v1,v2),dim=c(3,3,2))
print(A)
#use apply to calculate the sum of the rows across all the matrices .
z<-apply(A,c(1),sum) #margin 1==>row wise and 2 ==>columnwise
print(z)
z<-apply(A,c(2),sum) #sum of columnwise
print(z)





print(A,,1)

print(A,,2)
X<-A[1,,1]
Y<-A[,1,2]
Z<-X+Y
print(Z)
