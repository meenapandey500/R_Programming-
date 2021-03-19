#WAP To find the simple interest when given principal,rate and time
interest<-function(x,y,z) #here variable x,y and z are formal parameters
  # or x,y and z are local variables
{
  return(x*y*z/100)
}

#call in main program
p=as.numeric(readline("enter principal"))
r=as.numeric(readline("enter rate of interest"))
t=as.integer(readline("enter year"))
#call the function by position of arguments/parameters
si=interest(p,r,t) #here variable p.r and t are actual parameters
a=si+p
cat("\n simple interest : ",si)
cat("\n amount : ",a)
