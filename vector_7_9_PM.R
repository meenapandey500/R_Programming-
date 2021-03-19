v<-c(56,67,78.9,"anu")
v
class(v)
v<-c(67,TRUE,"pankaj",62)
v
class(v)

x<-c("Anu"=23,"Pankaj"=31,"Geeta"=24,"Lalita"=26)
x
#To retrieve record from vector x
#To retrieve age of pankaj .we use [] for index
x["Pankaj"]
#To retrieve age of Pankaj and Lalita
#if retrieve multiple record from vector then use vectorname[c(value,value,...)]
x[c("Pankaj","Lalita")]
#to create a vector
v<-c(23,56,78,90,32,45,67,19)
v
#To retrive data through Indexing
#To retrieve data at 5th position of vector v
v[5]
#To retrive data from 3rd,5th and 8th position
v
v[c(3,5,8)]
#Write a program to find the sum of 3rd and 6th positions's value from vector v
a<-v[3]
b<-v[6]
a
b
c=a+b
c
a*b
#to find the number of elements in vector v then use inbuilt function length()
v
n=length(v)
item=as.integer(readline("Enter item to be searched"))
flag=F  #means FALSE flag means user defined variable
for(i in 1:n)
{
  if(v[i]==item)
  {
    cat("\n",item," found at position :",i)
    flag=T  #means TRUE
    break
  }
}
if(flag==F)
{
cat(item ," not found")
}

#To retrieve data from vector through slicing 
v
#To retrieve data from 3rd position to 5th position
v[3:5]
v
#to sum all elements of vector v then use inbuilt function sum()
sum(v) #23+56+78+90+32+45+67+19
#To find the average of vector v means to find the mean() 
#mean(average)=sum(v)/no. of elements
mean(v)
v
sort(v) #by default ascending order
sort(v,decreasing = TRUE) #if descending order
#to find the maximum value in vector v then inbuilt function max()
max(v)
#To find the second LArgest value in vector v
v
n=length(v)
x=sort(v) #ascending order
x
x[n-1]
#2nd method
x=sort(v,decreasing = T)
x
x[2]
min(v)
a=c("seema","rekha","deepak","suresh")
a
sort(a)
sort(a,decreasing = T)
#Lecture Date : 25-06-2020
#Arithmetic operation
a<-c(10,20,30,40,50)
b<-c(1,2,3,4,5)
a
b
a+b
a-b
a*b
a/b
a<-c(10,20,30,40)
b=c(4,6,8)
a
b
a+b
a*b
#sets operation in vector 
a<-c(10,20,40,50)
b<-c(20,60,80,10,25)
a
b
union(a,b)
intersect(a,b)
setdiff(a,b)
setdiff(b,a)
#Define name of vector
temps=c(45,40,38,20,28,39,35)
names(temps)=c('M','T','W','TH','F','S','SU')
temps

names(temps)=as.Date(c('2020-06-18','2020-06-19','2020-06-20','2020-06-21',
                       '2020-06-22','2020-06-23','2020-06-24'))
temps

A<-c(30,45,67,23,60,89)
#Access data from vector A through Logical indexing
A[c(TRUE,FALSE,F,T,T,F)]
#or
A[c(1,4,5)]
#To access data from vector through indexing
A[2]
A[c(3,6)]
A[-2] #to display all data apart location 2 means to skip 2nd position value
#- means to skip those position
A[-c(3,6)] #skip value at 3 rd and 6th position
#Access data through slicing start : stop
A[3:5] #access value at 3rd position to 5th position
#means value at 3rd,4th and 5th location

#Indexing with name
v<-c(10,20,25,34,56,78)
names(v)<-c('a','b','c','d','e','f')
v
v['d'] #Access data through name
v[c('b','f','e')]
v>40 #return answer in logical
#Access data from vector through condition
v[v>40]
v[v%%5==0]
#access data through multiple condition
v[v%%2==0 & v%%5==0] # & and &&  a   b   c
#if(a>b && a>c)
a<-c(10,20,4)
b<-c(5,17,2)
c<-c(34,90,6)
a>b && a>c
a>b & a>c
a>b || a>c
a>b | a>c


