#3) Indexing with a logical vector
#suppose create a vector 
marks<-c(56,89,65,78,32,67,55,60,76,39)
print(marks)
#Retrieve record through logical index :=TRUE means 1 means to retrive record
# and FALSE means 0 means not retrieve record
print(marks[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,FALSE,FALSE)])
#retrieve record according to condition means 
#To retrieve those records whose marks>60 but less than 85 means apply multiple
#conditions
marks<-c(56,89,65,78,32,67,55,60,76,39)
print(marks)
print(marks[marks>60 & marks<85])

marks<-c(56,89,65,78,32,67,55,60,76,39)
print(marks)
print(marks[-1]) #to retrieve las record means marks of last student

