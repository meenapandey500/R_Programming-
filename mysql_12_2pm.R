#install.packages("RMySQL")
library(RMySQL)
con=dbConnect(MySQL(),user="root",password="",dbname="sms2",host="localhost")
#con user defined object
#to retrieve all records from table student then fire SQL Query
#SELECT *  FROM <TABLENAME EXISITING>
q="select * from student"
dbGetQuery(con,q)
#dbGetQuery() inbuilt method of R prog. this method executes the select query
#of sql 

