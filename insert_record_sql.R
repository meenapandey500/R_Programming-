library(RMySQL) #To call library
con=dbConnect(MySQL(),user="root",password="",dbname="KVS",host="localhost")
repeat
{
  r=as.integer(readline("Enter rno"))
  p=as.integer(readline("Enter marks of python"))
  rp=as.integer(readline("Enter marks of R prog"))
  m=as.integer(readline("Enter marks of ML"))
  q=paste("insert into marks values(",r,",",p,",",rp,",",m,")",sep='')
  dbSendQuery(con,q)
  ans=readline("Add another records y/n")
  if(ans=="n")
  {
    break
  }
}




