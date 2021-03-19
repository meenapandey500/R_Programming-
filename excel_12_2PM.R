#install.packages("xlsx") or   install.packages("readxl")
library(xlsx)   #library(readxl)
data<-read.xlsx('employees.xlsx',sheetIndex=2) # sheetIndex=1 means employee sheet
#2=student sheet
print(data)
ncol(data) #to display no. of columns
nrow(data) #to display no. of rows
colnames(data) #to display all column name
data[c('sname','result')] #to display all records of sname and result
#to display only those records whose student is pass
subset(data,result=='pass')
library(readxl)
data<-read_excel('employees.xlsx',sheet="student")
print(data)
