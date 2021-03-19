#print formatting 
#%s indicate string type value 
#sprintf("message format",value)
#if print string type value then use format %s
print(sprintf("My Name is %s","Meena Pandey"))
name=readline("Enter Name :")
print(sprintf("My Name is %s",name))
#Today Lecture
print(sprintf("I am %i years old",28))
#for eg.
a=20
b=10
c=a+b
print(sprintf("SUM : %i + %i = %i",a,b,c))
#output : sum : 20 + 10 = 30

a=25.6
b=10.2
c=a+b
print(sprintf("SUM : %.1f + %.1f = %.1f",a,b,c))
#%f means float means decimal value
W<-c("This","is","a","computer") #create a character vector
W
W[1]
W[2]
#lapply(vectorname,function)
#To find the no. of charcters of each index In vector w use inbuilt method 
#nchar 
lapply(W,nchar) 
sapply(W,nchar)
#create a data frame with the help of 3 vectors
patient.id=c(1:20)
patient.age=c(21,34,56,43,23,78,90,23,45,36,27,16,15,18,27,29,30,43,12,67)
patient.treatment=c('a','b','a','c','b','a','c','a','a','b','b','a','c','c',
                    'c','a','b','b','c','b')
patient=data.frame(patient.id,patient.age,patient.treatment)
patient
tapply(patient$patient.age,patient$patient.treatment,mean)
#tapply() ==>work as dataframe
library(dplyr)
patient
p<-group_by(patient,patient.treatment)
p
result=summarise(p,count=n())
result




data() #inbuilt dataset which store in system
data<-airquality   #airquality inbuilt dataset 
print(data)
any(is.na(data)) #is.na(dataframe name) ==>to check null value and return 
#T /F
str(data)
sum(is.na(data)) #Total count nullvalues in dataset
sum(is.na(data$Ozone))
sum(is.na(data$Solar.R))
sum(is.na(data$Wind))
colSums(is.na(data))#colSUms() ==>inbuilt function
clean_data=na.omit(data) #omit(dataframe) to delete null value
clean_data
nrow(clean_data) #to count the no. of rows in new dataset clean_data
nrow(data)

patient
p<-group_by(patient,patient.treatment)
p
result=summarise(p,count=n())
result


