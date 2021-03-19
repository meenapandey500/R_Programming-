# Creating a list containing a vector, a matrix and a list.  
data<-list(c("asha","rekha","kamal"),matrix(c(40,50,60,70,80,90),nrow=2),
           list("BCA","BCOM","ENGG.")) 
data
#Giving a name to list elements
names(data)<-c("Student","Marks","Course")
data
#Manipulation of list elements
#1. to add new element at the end of the existing list
data[4]<-"Mumbai"
data
print(data[4])
## Removing the last element.  
data[4]<-NULL
print(data[4])
data
#Update the 3rd position
data[3]<-"Course content"
print(data[3])
data
