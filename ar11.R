# Write a program to find the Area of following Shapes according to choice :
#   
#   R. =  Area of Rectangle L*w
#   C. = Area of circle  3.14*r*r
#   T. = Area of triangle  b*h/2

cat(" \nR. =  Area of Rectangle  C. = Area of circle   \n T. = Area of triangle")
ch=readline("Enter Your choice : ")
ch=toupper(ch)
if(ch=="R")
{
  l=as.numeric(readline("Enter Length : "))
  w=as.numeric(readline("Enter width : "))
  a=l*w
  cat("Area of Rectangle : ",round(a,digits=1))
}else
  if(ch=="C")
  {
    l=as.integer(readline("Enter Radius : "))
    a=3.14*r*r
    cat("Area of Circle : ",round(a,digits=2))
  }else
    if(ch=="T")
    {
      b=as.numeric(readline("Enter base : "))
      h=as.numeric(readline("Enter height : "))
      a=b*h/2
      cat("Area of Triangle : ",round(a,digits=2))
    }else
    {
      print("Invalid choice")
    }
