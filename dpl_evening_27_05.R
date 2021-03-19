library(dplyr)
mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
print(mydata)
colnames(mydata)
#Selecting Random N Rows(3 rows)
sample_n(mydata,3)
#it returns randomly 10% of rows.
#Selecting Random Fraction of Rows
#sample_frac(mydata,0.1)
d1=select(mydata,State)
head(d1,10)
#Remove Duplicate Rows based on all the variables
x1 = distinct(mydata)
head(x1)
# Remove Duplicate Rows based on a variable
x2 = distinct(mydata, Index, .keep_all= TRUE)
print(x2)
head(x2,10)
#Remove Duplicates Rows based on multiple variables
x3=distinct(mydata,Index,Y2002,.keep_all= TRUE)
print(x3)
#select()
x4=select(mydata,Index,Y2002,Y2014)
head(x4,10)
#Dropping Variables(column) means hide variables
x5=select(mydata,-c(Y2003,Y2005,Y2011))
head(x5)
#Selecting or Dropping Variables starts with 'Y'
#starts_with()
#to display all records whose variables(columns) not start with Y
z1 = select(mydata, -starts_with("Y"))
head(z1)
z1 = select(mydata, -ends_with("0"))
head(z1)

#Selecting Variables contain 'I' in their names
z2 = select(mydata, contains("i",ignore.case=TRUE))
head(z2)
head(mydata)
#reorder variables
#The code below keeps variable 'State' in the front and the 
#remaining variables follow that.
s1= select(mydata, State, everything())
head(s1)
#rename( ) Function
#to change the existing variable name means column name
#syntax:  rename(datasetname,new variablename=old existing variablename)
z1=rename(mydata, Index1=Index)
head(z1)
#filter() ==>to select particular row according to condition
#to display those records whose index=A
z2 = filter(mydata, Index == "A")
head(z2)
#Multiple Selection Criteria
#%in% operator 
#to show those records whose Index=A or Index=C
#syntax : variablename %in% c(value1,value2,...)
z = filter(mydata, Index %in% c("A", "C"))
print(z)
#And condition apply in multiple criteria
#to show those records whose Index=A or Index=C but Y2002>=1300000
z = filter(mydata, Index %in% c("A", "C") & Y2002 >= 1300000 )
print(z)
#OR' Condition in Selection Criteria
# | pipeline is used for or 
##to show those records whose Index=A or Index=C or Y2002>=1300000
z = filter(mydata, Index %in% c("A", "C") | Y2002 >= 1300000 )
print(z)
#NOT Condition(! operator)
#The "!" sign is used to reverse the logical condition
#!TRUE ==>False   !False=True
z = filter(mydata, !Index %in% c("A", "C"))
print(z)
#Contains conditions (grapl())
#we are looking for records wherein column state contains 'Ar' in
#their name.
z= filter(mydata, grepl("Ar", State))
#grepl() m inbuilt function ==>regular expression
#syntax : grapl("word",variablename/colname)
print(z)
a<-summary(mydata)
print(a)

#summarise selected variables (mean(),median(),sum(),max(),min())
summarise(mydata, Mean_2015 = mean(Y2015), med_2015=median(Y2015))
#summarise multiple variables ==>summarise_at()
#old version of dplyr
summarise_at(mydata, vars(Y2005, Y2006), funs(n(), mean, median))
#n() ==>total no. of records
#new version of dplyr
summarise_at(mydata, vars(Y2005, Y2006), list(n=~n(), mean=mean, median=median))
library(dplyr)
mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")

#28-05-2020
summarise_at(mydata, vars(Y2005, Y2006), list(~n(), ~mean(.), ~median(.)))

#Base R Style
#to show the no. of elements in Y2005 and Y2006
summarise_at(mydata, vars(Y2005, Y2006), function(x) length(unique(x)))

#purrr Style ~ (alternative method)
summarise_at(mydata, vars(Y2005, Y2006), ~length(unique(.)))
#dot means apply variable Y2005 and Y2006 
#Summarize with Custom Functions
summarise_at(mydata, vars(Y2011, Y2012),funs(mean, median), na.rm = TRUE)
#for eg.
df=data.frame(x1=c(20,NA,30,40),x2=c(89,30,NA,NA))
print(df)
summarise_at(df,vars(x1,x2),funs(mean,median),na.rm=TRUE)

print(df)
df[2,1]<-"ram" #to replace the value from ram at location 2nd and 1st col x1

print(df)


#in this case, we are computing the number of records, number of missing values,
#mean and median for variables Y2011 and Y2012. 
#The dot (.) denotes each variables specified in the second argument of the function.

summarise_at(mydata, vars(Y2011, Y2012),
    funs(n(), missing = sum(is.na(.)), mean(., na.rm = TRUE), median(.,na.rm = TRUE)))
# apply df dataset
df[2,1]=NA
print(df)
summarise_at(df, vars(x1,x2),
  funs(n(), missing = sum(is.na(.)), mean(., na.rm = TRUE), median(.,na.rm = TRUE)))


#Instead of funs( ), you should make a habit of using list( ) as funs( ) 
#can be dropped in future versions of dplyr package.
summarise_at(mydata, vars(Y2011, Y2012),
             list(~n(), missing = ~sum(is.na(.)), ~mean(., na.rm = TRUE),
                  ~median(.,na.rm = TRUE)))


#How to apply Non-Standard Functions
#Suppose you want to subtract mean from its original value and 
#then calculate variance of it.
set.seed(222)
mydata1 <- data.frame(X1=sample(1:100,100), X2=runif(100))
mydata1
summarise_at(mydata1,vars(X1,X2), function(x) var(x - mean(x)))
#or
summarise_at(mydata1,vars(X1,X2), ~ var(. - mean(.)))


#Summarize all Numeric Variables
#The summarise_if function allows you to summarise conditionally.
summarise_if(mydata, is.numeric, funs(n(),mean,median))
#or
summarise_if(df, is.numeric, funs(n(),mean,median))

#Alternative Method :
#First, store data for all the numeric variables
numdata = mydata[sapply(mydata,is.numeric)]
#Second, the summarise_all function calculates summary statistics for all 
#the columns in a data frame
summarise_all(numdata, funs(n(),mean,median))

#arrange() function ==> to arrange records in ascending /descending order
#Use : Sort data
#Syntax
#arrange(data_frame/dataset's object, variable(s)_to_sort)
s=arrange(mydata,State) #by bdefault ascending order
head(s,15)
#To sort a variable in descending order, use desc(x).
s=arrange(mydata,desc(State))
head(s)

#Sort Data by Multiple Variables
s=arrange(mydata, Index, Y2002) #ascending order
head(s,10)
#Suppose you need to sort one variable by descending order and
#other variable by ascending oder.
s=arrange(mydata, desc(Index), Y2002)
head(s,10)

#group_by(data, variables)
g=group_by(mydata,Index)
print(g)
head(mydata)


student<-data.frame(name=c("anu","deepa","kamal","suresh","leena"),
                    age=c(21,23,24,22,23),city=c("bhopal","indore","bhopal","indore",
                                                 "bhopal"))
print(student)
s=summarise_at(group_by(student,city),vars(age),funs(n(),mean(.,na.rm=TRUE)))
print(s)

#1/june/2020

library(dplyr)
mydata = read.csv
      ("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
print(mydata)
#Summarise Data by Categorical Variable
#We are calculating count and mean of variables Y2011 and Y2012 by variable
#Index.
t = summarise_at(group_by(mydata, Index), vars(Y2011, Y2012), funs(n(), 
                                                            mean(., na.rm = TRUE)))
head(t)
#mutate() function
#Use :Creates new variables
#Syntax :
 # mutate(data_frame, expression(s) )
employee=data.frame("name"=c("anu","pankaj","kamal"),
                    "city"=c("mumbai","thane","indore"),"basic_sal"=c(35000,67000,
                                                          56000))
employee
emp1=mutate(employee,HRA=basic_sal*4/100)
emp1
emp1=mutate(emp1,CA=basic_sal*3/100,MA=basic_sal*2/100,PF=basic_sal*10/100)
emp1
emp1=mutate(emp1,Gross_pay=basic_sal+HRA+CA+MA-PF)
emp1
employee

#Create a new variable
#The following code calculates division of Y2015 by Y2014 and name it "change".
mydata1 = mutate(mydata, change=Y2015/Y2014)
head(mydata1)

#Multiply all the variables by 1000
#It creates new variables and name them with suffix "_new".
d = mutate_all(mydata, funs("new" = .* 1000))
head(d)

#Calculate Rank for Variables
#Suppose you need to calculate rank for variables Y2008 to Y2010.
mydata12 = mutate_at(mydata, vars(Y2008:Y2010), funs(Rank=min_rank(.)))
head(mydata12)


mydata12 = mutate_at(mydata, vars(Y2014:Y2015), funs(Rank=min_rank(desc(.))))
(mydata12)

#use pipe operator
#Datasetname %>% select(col1,col2,...) %>% function2()
employee
#to display name,city of all employees
employee %>%
  select(name,city)
#arrange() with the help of pipe operator
#to arrange records in ascending order according to name
employee %>%
  arrange(name)
#to arrange records in descending order according to name
employee %>%
  arrange(desc(name))
head(mydata)
#to display index,state and Y2005 of all rows
mydata %>%
  select(Index,State,Y2005) %>%head
#or
a=select(mydata,Index,State,Y2005)
head(a)

mydata %>%
  arrange(desc(Index),Y2002) %>%head(10)

#to display all record of Index,2008,2015 but display this record in descending
#order of Index variable
mydata %>% 
  select(Index,Y2008,Y2015)%>%
  arrange(desc(Index)) %>%head(10)

#or without using pipe operator
A=select(mydata,Index,Y2008,Y2015)
B=arrange(A,desc(Index))
head(B,10)

#to display  Index,2008,2015 column of those records whose Y2008>=1800000 
#but display this record in descending order with index variable
mydata %>% 
  select(Index,Y2008,Y2015)%>%
  arrange(desc(Index)) %>%
  filter(Y2008>=1800000)%>%head(10)

#or without using pipe operator
A=select(mydata,Index,Y2008,Y2015)
B=arrange(A,desc(Index))
C=filter(B,Y2008>=1800000)
head(C,10)



#Tidyr()
#factor 


  
  
msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>% 
  head




mydata %>% select(Index, Y2015) %>%
  filter(Index %in% c("A", "C","I")) %>%
  group_by(Index) %>%
  filter(min_rank(desc(Y2015)) ==3) %>% head

#02-06-2020
library(dplyr)
mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/
                  data/master/sampledata.csv")
print(mydata)
#Selecting 3rd Maximum Value by Categorical Variable
#using pipe operator
t = mydata %>% select(Index, Y2015) %>%
  filter(Index %in% c("A", "C","I")) %>%
  group_by(Index) %>%
  do(arrange(.,desc(Y2015))) %>%  slice(3)
print(t)

#mutate() function
#Use :Creates new variables
#Syntax :
 # mutate(data_frame, expression(s) )
#or
#data_frame %>% mutate(expression(s))    

#Cumulative Income of 'Index' variable
#The cumsum function calculates cumulative sum of a variable. 
#With mutate function, we insert a new variable called 'Total'
#which contains values of cumulative income of variable Index.
out2 = mydata %>% group_by(Index) %>% 
  mutate(Total=cumsum(Y2015)) %>%
  select(Index, Y2015, Total)
print(out2)

#join() function
#Use : Join two datasets
#Syntax :
  #inner_join(x, y, by = )
#left_join(x, y, by = )
#right_join(x, y, by = )

#x, y - datasets (or tables) to merge / join
#by - common variable (primary key) to join by.

df1 = data.frame(ID = c(1, 2, 3, 4, 5),
                 w = c('a', 'b', 'c', 'd', 'e'),
                 x = c(1, 1, 0, 0, 1),
                 y=rnorm(5),
                 z=letters[1:5])
df2 = data.frame(ID = c(1, 7, 3, 6, 8),
                 a = c('z', 'b', 'k', 'd', 'l'),
                 b = c(1, 2, 3, 0, 4),
                 c =rnorm(5),
                 d =letters[2:6])
#INNER JOIN
df3 = inner_join(df1, df2, by = "ID")
print(df3)
#Left Join
left_join(df1, df2, by = "ID")
right_join(df1, df2, by = "ID")
#if_else statement
df <- c(-10,2, NA)
df
if_else(df < 0, "negative", "positive", missing = "missing value")
#Create a new variable with IF_ELSE
#If a value is less than 5, add it to 1 and if it is greater than 
#or equal to 5, add it to 2. Otherwise 0.
df =data.frame(x = c(1,5,6,NA))
df
df %>% mutate(newvar=if_else(x<5, x+1, x+2,0))

#multiple if else statement
mydf =data.frame(x = c(1:5,NA))
mydf
mydf %>% mutate(newvar= if_else(is.na(x),"I am missing",
                       if_else(x==1,"I am one",
                         if_else(x==2,"I am two",
                             if_else(x==3,"I am three","Others")))))

#replace multiple if_else with case_when() function

mydf

mydf %>% mutate(flag = case_when(is.na(x) ~ "I am missing",
                                 x == 1 ~ "I am one",
                                 x == 2 ~ "I am two",
                                 x == 3 ~ "I am three",
                                 TRUE ~ "Others"))
#Select only numeric columns
mydata2 = select_if(mydata, is.numeric)
mydata2
#Similarly, you can use the following code for selecting factor 
#columns -factor means character means string type data
mydata3 = select_if(mydata, is.factor)
mydata3

mydata4 = select_if(mydata, is.character)
mydata4

k <- c("a", "b", "?", "d")
k
is.na(k)
k=na_if(k, "?")
k







