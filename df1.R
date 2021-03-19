#In built features of R prog.
seq(1:10)
#or
seq(1,10) # start=1 ,stop=10 and byfault increment=1
seq(1,10,by=2) #start=1 stop=10 increment by 2
v1<-c(34,12,89,54,23)
v1
sort(v1) #by default ascending order
#descending order
sort(v1,decreasing=T)
#to print vector in reverse order
rev(v1)
str(v1)
mat<-matrix(1:15,nrow=3)
mat
str(mat)
#append function
# to add new element at the end of vector
v1
v1<-append(v1,90)
v1
v1
v2<-c(67,456,789)
v2
v1=append(v1,v2)
v1
#sample() gives a random value from a sequence
sample(1:10,1) #sample(sequence,no. of element)
sample(1:20,5)
v1
sample(v1,3)
#to check the v1 object is vector or not
is.vector(v1)
is.list(v1)
#as.* converts object type
#to converts vector v1 to list
x=as.list(v1)
x
is.list(x)
#to converts vector v1 to matrix
m=as.matrix(v1)
print(m)
#Regular expression
x="I am very Busy"
grepl("very",x) #to search a word and answer return in boolean form
#syntax grepl("word",data)
grepl("akash",x)
#grep() returns index
v1
grep(54,v1)
#which function
letters
which(letters=="t")
v1
which(v1>12)
#apply which() in matrix
m=matrix(rep(c(-1,0,1),4),nrow=4)
print(m)
#which function 
which(m==0,arr.ind =T)
#cell means intersection of row and column

#round()
round(45.8676,digits=2)
round(45.8676,digits=1)
round(45.8626,digits=2)
trunc(45.8678)#to truncate the after decimal no.
rnorm(50)

#format function
#left justify string
result<-format("Hello",width=8,justify="l")
result
#center justify string
result<-format("Hello",width=8,justify="c")
result
#Total number of digits displayed.Last rounded off.
result=format(23.123456789,digits=9)
result
#Display numbersin scientific notation
result<-format(c(6,12.5678),scientific=T)
result
#The minimum number of digits to the right of the decimal point 
result<-format(23.45,nsmall=5)
result

result<-format("Hello",width=8,justify="r")
result



