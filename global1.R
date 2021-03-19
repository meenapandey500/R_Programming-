t<-5 #global variable
show<-function()
{
  t<-12 #local variable
  cat("t=",t)  #12
}
#main program
cat("t in main program : ",t) #5
#call show()
show()
