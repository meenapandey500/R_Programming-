library(RMySQL)#to import RMySQL Package
con=dbConnect(MySQL(),user="root",password="",
              dbname="school_managements",host="localhost")

q="select upper(name) 'Upper',lower(name) 'Lower' from student"
dbGetQuery(con,q)
