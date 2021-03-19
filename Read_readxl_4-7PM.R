#call library means packages then library()
library(readxl)
#To read excel file company.xlsx in R prog. then
#use inbuilt function read.xlsx() which define in xlsx 
#library(packages)
student<-read_excel("company.xlsx",sheet="student")#student=1
#teacher=2
print(student)

teacher<-read_excel("company.xlsx",sheet="teacher")
print(teacher)
