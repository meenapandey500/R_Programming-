library(RMySQL)
con=dbConnect(MySQL(),user="root",password="",
              dbname="school_managements",host="localhost")
dbListTables(con)
q="select student.stud_id,name,age,city,phy,chem,math from student,marks where
student.stud_id=marks.stud_id"
result = dbSendQuery(con,q)
data = fetch(result)
#data = fetch(result)
print(data)

#q="select * from student order by name desc"
#q="select city,count(*) from student group by city"
result = dbSendQuery(con,q)
data = fetch(result)
#data = fetch(result)
print(data)