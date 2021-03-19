library(dplyr)
data = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
print(head(data))
#To display those records whose index="A"
A=filter(data,Index=="A")     
print(A)
#%in% suppose multiple values apply on single columns
# To retrieve those records whose index=A or Index=C or Index S
A=filter(data,Index %in% c('A','C',"S"))
print(A)
# apply multiple condition then use , means and or & 
# To retrieve those records whose index=A or Index=C or Index S and Y2002
# >=1300000
A=filter(data,Index %in% c('A','C',"S") & Y2002>=1300000)
print(A)
#or
A=filter(data,Index %in% c('A','C',"S"),Y2002>=1300000)
print(A)
# To retrieve those records whose index=A or Index=C or Index S or Y2002
# >=1300000
#then use pipeline |
A=filter(data,Index %in% c('A','C',"S") | Y2002>=1300000)
print(A)
# To retrieve those records whose index not A,C or S then ! not operator
A=filter(data,!Index %in% c('A','C',"S"))
print(A)
#We are looking for records wherein column state contains 'Ar' in their name
#contains condition  then use grapl() -->inbuilt function -->regular
#expression
#syntax of grapl : grapl("word",columnname)
A=filter(data,grepl("Ar",State))
print(A)
#arrange() ==>to arrange records in ascending or descending order 
#syntax : arrange(dataobject,columnname)#by default ascending order
#create data frame 
student<-data.frame(name=c("suresh","deepak","babita","kamal","anu","leena"),
        age=c(21,23,24,22,23,24),
        city=c("bhopal","indore","bhopal","indore","bhopal","mumbai"))
print(student)
x=arrange(student,name) #bydefault ascending order
print(x)
#to arrange records in descending order according to name field
x=arrange(student,desc(name))
print(x)
#mutate() ==> To add new field in existing dataset
#create a new data frame
employee=data.frame("name"=c("anu","pankaj","kamal"),
                    "city"=c("mumbai","thane","indore"),
                    "basic_sal"=c(35000,67000,56000))
print(employee)
emp1=mutate(employee,HRA=basic_sal*5/100,MA=basic_sal*2/100,PF=basic_sal*2.5/100)
print(emp1)
emp1=mutate(emp1,gross_pay=basic_sal+HRA+MA-PF)
print(emp1)
#summarise() 
a=summary(emp1)
print(a)
summary(student)
#summarise selected variables means columns (numeric column)
# to display the mean and median of column HRA
summarise(emp1,Mean_HRA=mean(HRA),median_hra=median(HRA))
#summarise multiple variables(columns) then use summarise_at()
#old version of dplyr
summarise_at(emp1,vars(HRA,MA),funs(mean,median))
#new version of dplyr 
summarise_at(emp1,vars(HRA,MA),list(Meanvalue=mean,MedianValue=median))
#Or
summarise_at(emp1,vars(HRA,MA),list(~mean(.),~median(.)))
#Lecture 23-july-2020
library(dplyr)
#create data frame 
student<-data.frame(name=c("suresh","deepak","babita","kamal","anu","leena"),
                    age=c(21,23,24,22,23,24),
                    city=c("bhopal","indore","bhopal","indore","bhopal","mumbai"),
                    phy=c(67,89,90,60,50,70),chem=c(90,45,67,NA,92,NA),
                    maths=c(NA,60,70,90,60,50))
                    
print(student)
#summarise_at(student,vars(phy,chem,maths),funs(mean,median))#bydefault na.rm=FALSE

summarise_at(student,vars(phy,chem,maths),funs(mean,median),na.rm=TRUE)#old version 
#new version of dplyr
#To find the no. of records in dataframe then apply n()
summarise_at(student,vars(phy,chem,maths),list(~n(),missing=~sum(is.na(.))))
#old version of dplyr
summarise_at(student,vars(phy,chem,maths),funs(n(),missing=sum(is.na(.))))
#summarise_if() function allows you to summerise conditionally 
#summarise all  numerical variables/columns
summarise_if(student,is.numeric,funs(mean,median),na.rm=TRUE)
#Alternative method 
#First ,store data for all numeric variables
s=student[sapply(student,is.numeric)]  
print(s)
print(student)
summarise_all(s,funs(mean,median),na.rm=TRUE)
#pipe operator %>%
#without using pipe operator
#To display name,phy,chem and age of those student whose age>23 and also o/p show
#in ascending order according to column phy
g=select(student,name,phy,chem,age)
print(g)
t=filter(g,age>23)
print(t)
arrange(t,phy)
#To display name,phy,chem and age of those student whose age>23 and also o/p show
#in ascending order according to column phy use pipe operator %>%  
student%>%select(name,phy,chem,age)%>%filter(age>23)%>%arrange(phy)
#syntaX : DATASET%>%select(col1,col2,...)%>%nextfunction()

#tidyr 
#install.packages("tidyr")
library(tidyr)
student<-data.frame(first_name=c("anu","deepa","kamal"),
                    last_name=c("pandey","khurana","verma"),
                    age=c(21,23,24),hometown=c("Bhopal,M.P",
                                               "Mumbai,Maharas",
                                               "Noida,U.P"))
student
s=separate(student,hometown,c("city","state"),sep=",")
print(s)
#Lecture  27-july-2020
#use unite() inbuilt function of tidyr : It is used to merge or concatenate
#2 or more field .
#syntax : 
#unite(dataframe name,"new field",c(existing field1,existing field2,..),sep=" ")
#sep optional parameter , if not given then by default _ 
u=unite(student,"name",c(first_name,last_name),sep=" ")
print(u)
homeruns<-data.frame(Player=c("John","Mike","Scott"),
                     X2015=c(41,42,40),
                     X2014=c(36,13,35),X2013=c(27,20,28))

print(homeruns)
homerun2=gather(homeruns,year,home_runs,X2015:X2013)

homerun2

spread(homerun2,year,home_runs)


