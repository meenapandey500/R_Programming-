#first method to create vector :
#Using the colon(:) operator,To create vector
#syntax :  z<-x:y here x ==>start  and y stop and by default increment by 1
#here z is a array vector
#for eg.
a<-4:10
print(a)
#To retrieve data from vector 
#1. Through indexing
#to retrieve the value at 4th position means 4th index
a[4]
a[-4] #to except 4th position value and retrieve the value of all location
#2. slicing ==>to retrieve data from vector
#to retrieve data from 3rd position to 6th position
a[3:6] #means to show value at index 3rd,4th,5th and 6th

#2 method : to create a vector Using the seq() function
#In R, we can create a vector with the help of the seq() function.
#seq()  inbuilt functio-->sequence
x<-seq(1,4,by=0.5) #start==1 and stop=4 and by means ==>interval =0.5
print(x)
x[4]
x[-4]
x[3:5]
#to create a vector using c()  means combined function
v<-c(34,78,90,21,34,56) 
print(v)
class(v) #to show the datatype of vector
print(sort(v)) #by default ascending order
#sort() inbuilt function , to arrange records in ascending order
print(sort(v,decreasing=TRUE)) # to arrange data in descending order
print(v)
#to find the maximum value
print(max(v))
#find index of the maximum value
which.max(v)  #which inbuilt class 
#to find the minimum value
print(min(v))
#find index of the minimum value
which.min(v)
#to retrieve second largest value in vector
n=2
print(sort(v,TRUE)[n]) #decresing order
#to find third highest value
n=3
print(sort(v,TRUE)[n])
print(v)
#to find the no. of elements in vector the use length()
print(length(v)) 
print(v)
#to access the value at index 2nd, 4th and 6th [c(index1,index2,index3)]
print(v[c(2,4,6)])
print(v)
#to access all values from vector v but except -2 and -6 index
print(v[c(-2,-6)])
print(v)
#to change the value at index 3rd 
#means to change the value of 3rd position with 69
v[3]=69
print(v)
#LOGICAL index
#to access data which position true
print(v[c(TRUE,TRUE,FALSE,TRUE,FALSE,FALSE)])
#data access from vector through logical condition
#to retrieve those value from vector whose value>50
print(v[v>50]) # here in place of index ,define condition

x<-c(23,"kamal",78,TRUE,90)
print(x)
class(x)
y<-c(23,56,78,TRUE,76,FALSE,43)
print(y)
class(y)
z<-c(34.67,56,89,TRUE,FALSE,89,43.56)
print(z)
class(z)
#How to drop a vector means delete a vector
#to delete vector z
z<-NULL
print(z)


#to create a vector
v<-c("Meena"=24,"Reeta"=34,"Kamal"=23,"Leena"=25)
print(v)
v["Reeta"]
#Write a R program to reverse the order of given vector.
#then use rev()  ==>to print series in reverse order
v<-c(23,45,67,89,12,32,90)
print(v)
v1=rev(v)
print(v1)
#Write a R program to combines two given vectors by columns, rows.
v1 = c(1,3,5,7,9) 
v2 = c(2,4,6,8,10)
print(v1)
print(v2)
v<-cbind(v1,v2) # to combined two given vectors by column wise
print(v)
r<-rbind(v1,v2)# to combined two given vectors by row wise
print(r)
#Write a R program to test whether the value of the element of
#a given vector greater than 10 or not. Return TRUE or FALSE.
v = c(15,26,9,7,10,0,9,15) 
print(v)
print(v<10)
#Write a R program to find the elements of a given vector 
#that are not in another given vector.
a = c(0, 10, 10, 10, 20, 30, 40, 40, 40, 50, 60)
b = c(10, 10, 20, 30, 40, 40, 50) 
z=setdiff(a,b)
print(z)
s=setdiff(b,a)
print(s)
#Write a R program to list the distinct values in a vector 
#from a given vector.
v = c(10, 10, 10, 20, 30, 40, 40, 40, 50) 
z=unique(v) #to remove duplicate no. only one time show
print(z)
#Write a R program to find Sum, Mean and Product of a Vector,
#ignore element like NA or NaN.
v<-c(12,34,NULL,89,NA,87,23,NULL)
print(v)

print(sum(v,na.rm=TRUE))

print(mean(v,na.rm=TRUE))#(12+34+89+87+23)/5
print(prod(v,na.rm=TRUE))#12*34*89*87*23
v[4]<-"Ram"
print(v)
print(sum(v))#show error
letters #SHOW 26 chars in small letter
LETTERS #show 26 chars in capital letter
#Write a R program to extract first 10 english letter in 
#lower case and last 10 letters in upper case
#and extract letters between 22nd to 24th letters in upper case.
#head() and tail()
#head() ==>from top 6 in R
#tail()  ==>from bottom 6 in R
head(letters,10)
tail(LETTERS,10)
#extract letters between 22nd to 24th letters in upper case.
print(LETTERS[22:24])
#Combining vectors means concatenate vector
a<-c(2,4,5,6,7,8)
class(a)
b<-c("seema","rekha","pankaj","suresh")
class(b)
z<-c(a,b)
print(z)
class(z)
#Arithmetic operations
a<-c(1,2,3,4,5)
b<-c(7,8,9,12,13)
print(a+b) #both are same length

a<-c(1,2,3,4,5,6)
b<-c(7,8,9,12,13)
print(a+b)
a-b
a*b
a/b      
a%%b
#named vector
temps<-c(45,40,38,20,28,39,35)
print(temps)
names(temps)<-c('M','T','W','TH','F','S','SU')
print(temps)
v<-c(1,3,NA,8)
is.na(v)
v[is.na(v)]<-0 # to replace the NA to 0
print(v)
#to display system date in bydefault format yyyy-mm-dd
#Sys inbuilt class and Date() inbuilt function of r-prog.
Sys.Date() 
dob<-"2000-09-23" # as a string
class(dob)
dob<-as.Date(dob)
class(dob)
#to add 30 days in dob
dob+30
sname<-c("raju","rohan","kamal","suresh")
dob<-as.Date(c('1998-09-12','1997-03-28','1995-07-16','2001-06-08'))
print(sname)
print(dob)
names(dob)<-sname
print(dob)
class(dob)
#Vector and Scalar operation
v<-c(4,6,7,9)
print(v)
v+5
v*2
v/3
#Comparsion Operation in vector (2 vectors)
#to compare value of each index from 2 vector and return answer in boolean type
v1<-c(5,7,12,9)
v2<-c(56,7,2,19)
print(v1)
print(v2)
v1>v2
v1>=v2
v1<v2
v1==v2
# Logical operations(and(& , &&) ,or(| , ||))
A<-c(65,7,8,19)
B<-c(13,45,5,8)
D<-c(6,9,10,12)
A>B & A>D
A>B && A>D
A>B | A>D
A>B || A>D
# vector functions
A<-c(65,7,8,19)
print(A)
#to sum of elements of vector A then use function sum()
sum(A)
# to product of elements of vector A then use function
prod(A) #(65*7*8*19)
mean(A) #(65+7+8+19)/4
#vaiance find ()
var(A)
#find standard deviation
sd(A)
#Find the maximum value in vector
max(A)
#Find the minimum value in vector
min(A)
length(A) #to find the no. of element in vector

A
#use condition in indexing
#to retrieve those value from vector A whose > 10
A[A>10] #A[1,4]






