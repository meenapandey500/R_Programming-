#Creates an array of two 3*3 matrices each with 3 rows and 3 columns
#we create two vectors of different lengths
X=c(20,40,70,90)
Y=10:25 
print(X)
print(Y)
cname=c("col1","col2","col3") #define column name
rname=c("Row1","Row2","Row3")#define row name
mname=c("Matrix1","Matrix2")
#Take these vectors as input to the array
A=array(c(X,Y),dim=c(3,3,2),dimnames=list(rname,cname,mname)) #byrow=FALSE 
print(A) 
#To calculate the sum of the rows across the matrices then use apply()
answer=apply(A,c(1),prod)
print("Row wise Sum")
print(answer)
#To calculate the sum of the columns across the matrices then use apply()
answer=apply(A,c(2),prod)
print("col wise Sum")
print(answer)




