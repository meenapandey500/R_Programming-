#local and global variables in R 
# local variables <- in R
#global variable in R : use <<-
#for eg. local variable
#no passing argument/parameter
show<-function()
{
  t<-7 #local variable 
}
#main program
show()
cat("t=",t) #show error