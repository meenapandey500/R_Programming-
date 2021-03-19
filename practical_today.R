#1/june/2020 Lecture 

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