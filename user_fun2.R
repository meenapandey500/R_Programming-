#4.no passing arguments/parameters and no  return value
#WAP to find the simple interest and amount
interest<-function()
{
  p=as.numeric(readline(prompt="enter principal"))
  r=as.numeric(readline(prompt="enter rate"))
  t=as.integer(readline(prompt="entertime"))
  si=(p*r*t/100)
  a=si+p
  cat("\n Simple interest : ",si)
  cat("\n Amount : ",a)
  }
#main program
interest() #call procedure


