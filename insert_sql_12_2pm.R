library(RMySQL)
con=dbConnect(MySQL(),user='root',password='',dbname='sms2',host='localhost')
#con user defined object
#To insert record from R-prog. to Table of Mysql Server
q="insert into student values(406,'padma khanna',23,'Indore')"
dbSendQuery(con,q) #to run a insert query
print("Record insert successfully

