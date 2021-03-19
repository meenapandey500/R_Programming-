#WAP to find the simple interest and amount when given principal,rate of interest
#and time
#Required arguments/parameters
simple.interest=function(p,r,t) #variables p,r,t are local variables/formal parmeter
{
  return(p*r*t/100)
}

#main program
pr=as.integer(readline("Enter Principal : "))
rate=as.integer(readline("Enter Rate of Interest : "))
time=as.integer(readline("Enter time in years"))
si=simple.interest(pr,rate,time)#call function , here pr,rate and time are actual parameter
amt=si+pr
cat("Simple Interest : ",si)
cat("Amount : ",amt)