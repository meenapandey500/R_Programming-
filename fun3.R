#4. no passing argument and no return value
#WAp to find the amount and compound interest of given principal ,
#rate and time
amount<-function()
{
  p=as.numeric(readline("Enter Principal"))
  r=as.numeric(readline("Enter rate of interest"))
  t=as.integer(readline("ENter time"))
  a=p*((1+(r/100))^t)
  ci=a-p
  cat("\n Amount :",a)
  cat("\n Compound interest : ",ci)
}
#Main program
#call function
amount()


