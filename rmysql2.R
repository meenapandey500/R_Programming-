library(RMySQL)#to import RMySQL Package
con=dbConnect(MySQL(),user="root",password="",
              dbname="school_managements",host="localhost")
#to insert new record in existing table student
#DML ==>insert query,update query,delete query
q="insert into student values(404,'kamal pandit',23,'indore','9876542345')"
dbSendQuery(con,q)
q="select * from student"
result=dbSendQuery(con,q)
data = fetch(result)
#data = fetch(result)
print(data)