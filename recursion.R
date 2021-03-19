#use recursion 
#WAP to find the factorial of given number
#passing arguments/parameters and return value
fact=function(n)
{
  if(n==0)
  {
    return(1)
  }else
  {
    return(n*fact(n-1))
  }
}#end of function
#main program
n=as.integer(readline("ENter Number "))
y=fact(n)
cat("\n Factorial : ",y)
