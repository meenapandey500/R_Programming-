#inbuilt DateTime function
#to display system date in r-prog.
Sys.Date() #Sys inbuilt class and Date() inbuilt function
#by default format yyyy-mm-dd
format(Sys.Date(),format="%d-%m-%y") #%d==>day %m ==>month %y==>20(if 2020)
format(Sys.Date(),format="%d-%m-%Y") #%Y==>2020
format(Sys.Date(),format="%d-%b-%Y")#january ==>jan ,feb,mar
#%b means abbrevation means january ==>jan ,feb,mar
format(Sys.Date(),format="%d-%B-%Y") #%B January March June April 
format(Sys.Date(),format="%a %d-%B-%Y") # %a  if monday then mon 
format(Sys.Date(),format="%A %d-%B-%Y") #%A  then monday
d="2020-03-23"  #string type
#to convert string type data to date type
class(d)
d=as.Date(d) #to convert string type data to date type
class(d)
print(d)
d=as.character(d) #to convert date type to character type
class(d)


d=as.Date("2020-09-09")
class(d)
print(d)
unclass(d) #to find the no. of days (1970-01-01)
#no. of days = d-(1970-01-01)
mydates<-as.Date(c("2007-06-22","2004-02-13"))
print(mydates)
#find no. of days between 2007-06-22 and 2004-02-13
days=mydates[1]-mydates[2]
print(days)
m=as.numeric(difftime(mydates[1]-mydates[2],units="days"))




df1=data.frame(Name=c('asha','renu','pankaj','lalita','kamal','suresh'),
               dob=as.Date(c('1995-06-16','1991-04-19','1993-07-22',
                             '1990-03-26','1991-05-12','1992-09-13')),
               doj=as.Date(c('2018-06-03','2018-06-03','2018-06-03',
                             '2018-06-03','2018-06-03','2018-06-03')))
print(df1)
#differences in months
df1$diff_in_month=as.numeric(difftime(df1$doj,df1$dob,units="days"))/(365.25/12)
print(df1)
#difference in year
df1$diff_in_year=as.numeric(difftime(df1$doj,df1$dob,units="weeks"))/52.25
print(df1)









#difference in Days
df1$diff_in_days=as.numeric(difftime(df1$doj,df1$dob,units="days"))
print(df1)
#difference in weeks
df1$diff_in_week=as.numeric(difftime(df1$doj,df1$dob,units="weeks"))
print(df1)








