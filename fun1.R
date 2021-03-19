#4. no passing arguments/parameters and no return value  
#wap to find the amount and compound interest 
amount<-function()
{
  p=as.numeric(readline(prompt="enter principal"))
  r=as.numeric(readline(prompt="enter rate of interest"))
  t=as.integer(readline(prompt="enter time"))
  a=p*((1+(r/100))^t) # ** or ^
  ci=a-p
  cat("Amount : ",a)
  cat("\nCI : ",ci)
}#end of function()
  #main program
  amount()  #call procedure

