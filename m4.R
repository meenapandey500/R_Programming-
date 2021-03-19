#wap to find the factorial of given no. using recursion
factorial<-function(n)
{
  if(n==0)
  {
    return (1)
  }else
  {
    return (n*factorial(n-1))
  }
  
}#end of function
#main program
n=as.integer(readline(prompt="enter number"))
y=factorial(n) 
cat("factorial : ",y)