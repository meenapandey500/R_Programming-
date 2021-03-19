#install.packages("dplyr")
library(dplyr) #load dplyr library 
#dplyr library is used to data manipulation and EDA process
#To load dataset sampledata.csv
mydata=read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
#mydata user defined object
print(mydata)
head(mydata) 
#To show colname of given dataset
colnames(mydata)
#selecting Random N rows (suppose 3 rows) then use inbuilt function sample_n()
#syntax : sample_n(object of dataset,no. of rows)
sample_n(mydata,3)
#To display all records of only state column
#then use select() syntax : select(dataset,columnname,col2,...)
d1=select(mydata,State)
print(d1)
head(d1,10)
tail(d1,15)
sample_n(d1,7)
#Remove duplicate rows based on all the variables(columns) then use inbuilt function
#distinct()
x1<-distinct(mydata)
print(x1)
#Remove duplicate rows based on a variable(column)
x2<-distinct(mydata,Index,.keep_all=TRUE)
print(x2)
#Remove duplicate rows based on a multiple variables(columns)
#x3<-distinct(mydata,Index,Y2002)
student=data.frame(Enroll=c(101,102,103,104),Name=c('Anu','Rekha','Anu','Pankaj'),
                   age=c(23,24,23,26),city=c('bhopal','indore','mumbai','indore'))
student
a<-distinct(student,city,.keep_all=TRUE)
#Remove duplicate rows based on a multiple variables(columns)
b<-distinct(student,Name,city,.keep_all=TRUE)
b

b<-distinct(student,Name,age,city,.keep_all=TRUE)
b
b<-distinct(student)
#to retrieve data(variable) from dataset student 
#to display Name and city of all students
x<-select(student,Name,city)
x
#to remove Name and city of all student
x<-select(student,-c(Name,city))
x
#mydata
colnames(mydata)
#To display Index ,State and Y2003 of all 
x<-select(mydata,Index,State,Y2003)
x
x<-select(mydata,-c(State,Y2005,Y2015,Y2013))
x
#To display all records whose variables(columns) not start with Y
#then use starts_with()
x<-select(mydata,-starts_with("Y"))
x
#To display all records whose variables(columns)ends with zero (0)
#the use inbuilt function ends_with()

x<-select(mydata,ends_with("0"))

x

x<-select(mydata,ends_with("2"))

x
#select() means to select any column/variables of all rows/records
#filter ()  ==>to select particular row means record
z2 = select(mydata, contains("i",ignore.case=TRUE))
z2
#Lecture 22-06-2020
library(dplyr)
mydata=read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
head(mydata)
colnames(mydata)
#select 
#contains()
#Selecting Variables contain 'I' in their names
x<-select(mydata,contains("i",ignore.case=FALSE))
x
#rename( ) Function
#to change the existing variable name means column name
#syntax:  rename(datasetname,new variablename=old existing variablename)
head(mydata)
#To change the column name Index with Index1
x<-rename(mydata,Index1=Index)
head(x)
#filter() ==>to select particular row according to condition
#to display all details of those records whose index=A
x<-filter(mydata,Index=="A")
x
#Multiple Selection Criteria
#%in% operator 
#to show those records whose Index=A or Index=C
#syntax : variablename %in% c(value1,value2,...)
filter(mydata,Index %in% c("A","C"))
#And condition apply in multiple criteria
#to show those records whose Index=A or Index=C but Y2002>=1300000
# In R prog. and ==> & or &&
filter(mydata,Index %in% c("A","C") & Y2002>=1300000)
#OR' Condition in Selection Criteria
# | pipeline is used for or 
##to show those records whose Index=A or Index=C or Y2002>=1300000
#in R prog. | or ||
filter(mydata, Index %in% c("A", "C") | Y2002 >= 1300000 )
#NOT Condition(! operator)
#The "!" sign is used to reverse the logical condition
#!TRUE ==>False   !False=True
filter(mydata, !Index %in% c("A", "C"))
#Contains conditions (grapl())
#we are looking for records wherein column state contains 'Ar' in
#their name.
filter(mydata, grepl("Ar", State))
#grepl()  inbuilt function ==>regular expression
#syntax : grapl("word",variablename/colname)
#for eg.
a="my name is meena pandey"
grepl("meena",a)
#summarise() is used with numerical type data
#summarise selected variables (mean(),median(),sum(),max(),min())
summarise(mydata, Mean_2015 = mean(Y2015), med_2015=median(Y2015))
#summarise multiple variables ==>summarise_at()
#old version of dplyr
summarise_at(mydata, vars(Y2005, Y2006), funs(n(), mean, median))
#n() ==>total no. of records
#new version of dplyr
summarise_at(mydata, vars(Y2005, Y2006), list(n=~n(), X=mean, 
                                              median=median))
#alternative method
summarise_at(mydata, vars(Y2005, Y2006), list(~n(), ~mean(.), ~median(.)))


#to show the no. of elements in Y2005 and Y2006
summarise_at(mydata, vars(Y2005, Y2006), function(x) length(unique(x)))

student=data.frame(Enroll=c(101,102,103,104),Name=c('Anu','Rekha','Anu','Pankaj'),
        age=c(23,24,23,26),city=c('bhopal','indore','mumbai','indore'))

student
summarise_at(student,vars(age),function(x) length(unique(x)))

summarise_at(student,vars(age),function(x) length(x)) #n() ==>length()
summarise_at(mydata, vars(Y2005, Y2006), function(x) length(unique(x)))
#length()  and n() both are same work

df=data.frame(x1=c(20,NA,30,40),x2=c(89,30,NA,NA))
print(df)
summarise_at(df,vars(x1,x2),funs(mean,median),na.rm=TRUE)

summarise_at(df,vars(x1,x2),funs(mean,median),na.rm=FALSE)

#Lecture 24-06-2020
library(dplyr)
df=data.frame(x1=c(20,NA,30,40),x2=c(89,30,NA,NA))
print(df)

summarise_at(df, vars(x1,x2),
 funs(n(), missing = sum(is.na(.)), mean(., na.rm = TRUE), median(.,na.rm = TRUE)))
#here is.na(.)  ==>inbuilt to check null values in column
student=data.frame(Enroll=c(101,102,103,104),Name=c('Anu','Rekha','Anu','Pankaj'),
                   age=c(23,24,23,26),city=c('bhopal','indore','mumbai','indore'))

student
#Summarize all Numeric Variables
#The summarise_if function allows you to summarise conditionally.
#if check datatype of variable or column then use is.datatype
#if check variable is numeric type(means integer and decimal both) or 
#not then use is.numeric
summarise_if(student, is.numeric, funs(n(),mean,median))
#Alternative Method :
#First, store data for all the numeric variables
#then use sapply() ==>to separate all types
numdata = student[sapply(student,is.numeric)] #numdata user defined dataframe
numdata
#Second, the summarise_all function calculates summary statistics for all 
#the columns in a data frame
summarise_all(numdata, funs(n(),mean(., na.rm = TRUE),median(., na.rm = TRUE)))
#only work as single numeric variable in dataset
summarise(student, mean_age = mean(age), median_age=median(age))
#To find the mean and median of multiple numeric variables means enroll and age
summarise_at(student,vars(Enroll,age),funs(mean(.),median(.)))

#mutate() function  is define in dplty library ==>to create a new variables
#Use :Creates new variables
#Syntax :
# mutate(data_frame(inbuilt), expression(s) )
student=data.frame(rollno=c(101,102,103,104),name=c("pankaj","asha","kiran","raju"),
          phy=c(67,89,80,76),chem=c(50,60,74,55),maths=c(69,78,69,59),
          hin=c(68,78,98,99),eng=c(80,70,80,90))
student
s=mutate(student,Total=phy+chem+maths+hin+eng,
         Percent=(phy+chem+maths+hin+eng)*100/500)
s
#arrange() function ==> to arrange records in ascending /descending order
#Use : Sort data
#Syntax
#arrange(data_frame/dataset's object, variable(s)_to_sort)
arrange(student,name) #bydefault ascending order
arrange(student,desc(name)) #to arrange record in descending order according to name
student
#Reorder Variables ==>use select() ==>define in dplyr
#The code below keeps variable 'name' in the front and the remaining variables 
#follow that.
select(student,name,everything())
select(student,phy,everything())

#Pipe operator %>% use library dplyr
#to display rollno,name and marks of phy of those student whose marks of phy>=80
student%>%select(rollno,name,phy)%>%filter(phy>=80)
student
student%>%select(name,phy,chem,maths)%>%arrange(name) #name ==>ascending order

student%>%select(name,phy,chem,maths)%>%arrange(name)%>%filter(phy>=80 & maths>=70) 

# 25-06-2020 Lecture
library(dplyr)
student=data.frame(rollno=c(101,102,103,104),name=c("pankaj","asha","kiran","raju"),
                   phy=c(67,89,80,76),chem=c(50,60,74,55),maths=c(69,78,69,59),
                   hin=c(68,78,98,99),eng=c(80,70,80,90))
student
#to display rollno,name and marks of phy of those student whose marks of phy>=80
#without use pipe operator
#to show rollno,name and marks of phy of all students
x<-select(student,rollno,name,phy) 
#apply filter
filter(x,phy>=80)

#Use pipe operator
student%>%select(rollno,name,phy)%>%filter(phy>=80)

#To load csv file advertising.csv
data=read.csv("advertising.csv")
data
colnames(data)
head(data)
nrow(data)
#To display TV,sales of first 15  records
#use pipe operator
data%>%select(TV,sales)%>%head(15)

#without using pipe operator
x<-select(data,TV,sales)
head(x,15)
#to arrange records in ascending order according to sales
#use pipe operator
data%>%arrange(desc(sales))%>%head(20)
d=head(data,15)
d%>%arrange(desc(sales))
#without using pipe
x=arrange(data,sales)
head(x,10)
head(data)
#mutate() : to add new field
#use pipe operator
data%>%mutate(Diff_TV_Radio=TV-radio,diff_TV_newspaper=TV-newspaper)%>%head(10)
#without pipe operator
x=mutate(data,Diff_TV_Radio=TV-radio,diff_TV_newspaper=TV-newspaper)
x
tail(x)
data%>%mutate(Diff_TV_Radio=TV-radio,diff_TV_newspaper=TV-newspaper)%>%
  arrange(desc(sales))%>%head(20)

#install.packages("tidyr")
library(tidyr)

student<-data.frame(first_name=c("anu","deepa","kamal"),
                    last_name=c("pandey","khurana","verma"),
                    age=c(21,23,24),hometown=c("Bhopal,M.P",
                                               "Mumbai,Maharas",
                                               "Noida,U.P"))
student
x=separate(student,hometown,c("City","State"),sep=",")
#syntax : separate(dataframe,exisiting column,c(new col1,new col2,...),sep=" ")
x
unite(x,hometown,c(City,State),sep=",")
#unite : to join multiple column into one column
unite(student,Name,c(first_name,last_name),sep=" ")
#syntax : unite(dataframe,new columnh,c(exist col1,exist col2,...),sep=" ")
student=unite(student,Name,c(first_name,last_name),sep=" ")
student
student=separate(student,Name,c("first_name","last_name"),sep=" ")
student

#gather() inbuilt function of tidyr library 
#gather() makes "wide" data longer
# For eg.
homeruns<-data.frame(Player=c("John","Mike","Scott"),
                     X2015=c(41,42,40),
                     X2014=c(36,13,35),X2013=c(27,20,28))
#homeruns user defined dataset
homeruns
homerun1=gather(homeruns,Year,Runs,X2015:X2013)
homerun1
#spread() makes "long" data wider
#spread() ==> inbuilt function of tidyr library
spread(homerun1,Year,Runs)






