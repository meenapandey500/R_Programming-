#To display system date then inbuilt method Date()
print("System Date : ")
print(Sys.Date())  #bydefault format of Date in R-prog. yyyy-mm-dd
cat(sys.Date()) #to find no. of days (Sys.Date()-origin Date of R-prog.)
#origin Date set : 1970-01-01
d<-"1970-01-31"
class(d)
cat(d)
d<-as.Date(d)
class(d)
cat(d)
print(d)
class(d)
unclass(d) #to display no. of days 
print(d)
#to change the format of date
format(d,"%d/%m/%y")  #%d means date means 31 %m means month 01 and %y 70
format(d,"%d/%m/%Y") # %Y  ==>1970
print(d)
t=Sys.Date()
t
format(t,"%d-%b-%Y") # %b means jun jan feb mar 
format(t,"%d-%B-%Y") # %B means june january march
format(t,"%a %d-%b-%Y") # %a thru mon
format(t,"%A %d-%b-%Y") # %a thursday monday
