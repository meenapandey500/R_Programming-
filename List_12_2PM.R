#List ==>collection of different types of Data
#List is a Data Structure of R prog.
#1. How to create a List ==>use list() inbuilt function
v<-c(3,4,5,6)
char_vec<-c("Shubham","pankaj","renu","leena")
logic_vec<-c(TRUE,FALSE,T,T)
#to create a list with the help of v,char_vec and logic_vec
list_data<-list(v,char_vec,logic_vec)
print(list_data)

#Creating list with same datatype
num_list<-list(2,5,6)
char_list<-list("tina","suresh","pankaj","deepa")
logic_list<-list(TRUE,T,F,T)
X<-list(c(4,5,6))
print(num_list)
print(char_list)
print(logic_list)
print(X)
#creating a list with different datatypes
X<-list("pankaj","deepa",c(2,3,4,5),TRUE,FALSE,22.5,12L)
print(X)
#2. Giving a Name to List Elements : -
#Step 1: Creating a List 
#step 2: Assign a name to the list elements with the help of names()
#step 3: Print the list data
#For eg. Creating a List containing a Vector,a Matrix and a List
list_data=list(c("Deepa","Tina","Renu"),
               matrix(c(40,80,60,70,90,80),nrow=2),list("BCA","MCA","BTech"))
#Giving names to the elements in the list
names(list_data)=c("Student","Marks","Course")
#Show the list
print(list_data)

#3 . Accessing List elements using indexing
#Accessing the first element of the list 
print(list_data[1])
#Accessing the third  element of the list
print(list_data[3])
#Accessing Element using names
print(list_data["Student"])
print(list_data$Marks)
print(list_data)
print(list_data[3])
print(list_data["Course"])
#Manipulating List Elements
#Adding Elements at the end of the List
list_data[[4]]<-c("Mumbai","Delhi","Indore")
print(list_data)
print(list_data[4])
#Removing the last element
list_data[4]<-NULL
print(list_data)

#Updating the 3rd Element
list_data[[3]]<-list("DCA","BCA","BTEch")
print(list_data[3])
#merge the list :to merge or join 2 or more list
#suppose we create 2 list
list1<-list(1,2,3)
list2<-list("Mon","Tues","Wed")
m_list=c(list1,list2)
print(m_list)
#Converting List To Vector
#Create List
list1<-list(1:5)
print(list1)
list2<-list(10:14)
print(list2)
#Converts the Lists to Vectors then use unlist()
v1<-unlist(list1)
print(v1)
v2<-unlist(list2)
print(v2)
v<-v1+v2
print(v)
#Creating list from another way 
A=list("x"=2.5,"y"=TRUE,"z"=1:3)
print(A)
A$x
A$y
A$z
print(list_data)
list_data[["Course"]][2]="MCA"
list_data
str(list_data)
#creating list x with the help of numeric vector 
x<-c(2,3,4)
sum(x)
mean(x)
max(x)
min(x)
length(x) #to find the no. of elements in list
sd(x) #to find the standard deviation 






