#calling a function with argument value (by position and by name)
simple.interest=function(p,r,t)
{
  return(p*r*t/100)
}

pr=as.numeric(readline("Enter Principal : "))
rate=as.numeric(readline("Enter Rate of Interest : "))
time=as.integer(readline("Enter Time : "))
#call the function by position of arguments/parameters
si=simple.interest(pr,rate,time)
cat("Simple Interest : ",si)
#call the function by names of the arguments/parameters
si=simple.interest(r=rate,t=time,p=pr)
cat("Simple Interest : ",si)