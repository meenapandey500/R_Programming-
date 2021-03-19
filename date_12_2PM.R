#date function in R-function 
#To display system date
#then use inbuilt function Date() -->call package Sys
d<-Sys.Date()
cat("System Date :")
d
print(d)
class(d)#to show datatype of variable d
unclass(d) #to display no. of days 1970-01-01
#means d-(1970-01-01) according to days or cat(d) ==>similar to unclass
d2<-as.Date('1970-01-31')
#In R-prog. bydefault format of Date yyyy-mm-dd
d2
unclass(d2)
d<-Sys.Date() #to store system date
d
weekdays(d)

#Bydefault date's format yyyy-mm-dd means 2020-06-17
#to change format of variable d
class(d)
#To change date in format dd mmm yyyy means 17 jun 2020 then use
#format %d %b %Y means dd mmm yyyy means %b means january ==>jan feb
format(d,"%d %b %Y")

format(d,"%B, %d %Y") #%B  means january march 
format(d,"%a %d-%B-%Y") #%a ==>sun mon web 
format(d,"%A %d %b %Y")#%A sunday
dates<-c("05/27/84","07/07/05","08/17/20") #dates vector
class(dates)
d<-as.Date(dates,"%m/%d/%y") #%m means month ==>06 %d==>date 27
d
max(d)
y=mean(d)
y
unclass(y)
x=unclass(d)
x#x : 3,4,5,8   (3+4+5+8)/4

