
#global variable in R : use <<-
#for eg. global variable
#no passing argument/parameter
t<-"global"
show<-function()
{
  t<<-7 #global variable 
}
#main program
show()
cat("t=",t) #no error o/p given t=7