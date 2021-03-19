#For example : 
#Creates an array of two 3*3 matrices each with 3 rows and 3 columns
#we create two vectors of different lengths
X=c(20,40,70,90)
Y=10:25 
print(X)
print(Y)
#Take these vectors as input to the array
A=array(c(X,Y),dim=c(3,3,2)) #byrow=FALSE 
print(A) 