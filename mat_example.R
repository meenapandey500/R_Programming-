#Create a matrix : -
X=matrix(c(2:13),nrow=4,byrow=TRUE) #byrow=FALSE by default

cat("Matrix X : ")
print(X)
#access the element at 3rd column and 1 st row
print(X[1,3])
cat("access the element at 2nd columnand 4th row")
print(X[4,2])
#Access only 2nd row means all details of 2nd row
print(X[2,])
#Access only the 3rd column means all records/rows of 3 rd column
print(X[,3])