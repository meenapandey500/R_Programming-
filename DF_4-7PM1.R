employee<-data.frame(emp_id=c(101:105),emp_name=
                       c("John","Anil","Deepak","Suresh","Kabir"),
                     salary=c(50200,32000,43900,25890,19000),
                     doj=as.Date(c("2017-10-24","2019-02-19","2018-05-14","2015-06-10","2012-12-13")),
                     stringasFactors=FALSE)
print(employee) 
#to show record according to conditions then use subset( )
#To display those records of employees whose salary>40000
#Then use subset( )  
#syntax : subset(dataframename,condition)
subset(employee,salary>40000)
#To display those records of employee whose salary>=30000 and salary<=45000
#we use logical operator 
subset(employee,salary>=30000 & salary<=45000 )
#To display all columns except emp_id and emp_name of those employess whose salary>=30000 and 
#salary<=45000 then use -
subset(employee,salary>=30000 & salary<=45000,select=-c(emp_id,emp_name))
print(employee)
#To display those records whose empname=Anil
subset(employee,emp_name=="Anil")

#Create DataFrame
df<-data.frame(id=c(10,20,30,40,50,60,70),codename=letters[1:7],
               group=c("F1","F2","F2","F1","F3","F2","F3"))
#df user defined data frame
print(df)

#To show all details of group F1 and F3
df[df$group %in% c("F1","F3"), ] #%in% command is used to access particular 
#record from data frame 

print(df)
#To show all records from data frame df except record no. 2
print(df[-2,])  # - means left the record means except the record means not show
#record no. 2  df[rowindex,colindex]

print(df[-c(3,5),]) #Except 3 and 5 th row
#to show first 3 records from dataframe df then use head()
head(df,n=3) #if no mention n=3 then display bydefault first 6 record

#to show last 3 records from dataframe df then use tail()
tail(df,n=3)#if no mention n=3 then display by defaultlast 6 record

head(df)

tail(df)








