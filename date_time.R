print(Sys.Date()) #to display system date
class(Sys.Date())
#Standard Date Format is yyyy-mm-dd
dates=c("09/23/1999","02/08/2001","05/12/2005","04/09/2007")
class(dates)
d=as.Date(dates,"%m/%d/%y") #yyyy-mm-dd 
#converts to standard format
print(d)

class(d)
?strptime #show help
as.numeric(d) #1970-01-01 index date in R
#1900-01-01 in excel
d-as.Date("1900-01-10")#differences presented as 
#no. of days
weekdays(d)
