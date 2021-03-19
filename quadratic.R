#WAP to find the roots of given quadratic equation .ax2+bx+c=0
a=as.numeric(readline(prompt="Enter Number a"))                                                                                                 
b=as.numeric(readline(prompt="Enter Number b"))
c=as.numeric(readline(prompt="Enter Number c"))
d=b*b-4*a*c #find discriminant
cat("Discriminant : ",d)
if(d>0)
{
  x1=((-b)+sqrt(d))/(2*a) 
  x2=((-b)-sqrt(d))/(2*a)      
  cat("\nReal root : \n x1=",x1,"\n x2=",x2)  
}else
  if(d==0)
  {
    x1=(-b)/(2*a)
    x2=(-b)/(2*a)
    cat("\nEqual root : \n x1=",x1,"\n x2=",x2)
  }else
  { print("\nimaginary root")
  }