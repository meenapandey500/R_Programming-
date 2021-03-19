pi<-3.14 #global variable
area_circle<-function(r) #passing arguments and return value
{
  return(pi*r*r)
}
volume.sphere<-function(r)#passing arguments and return value
{
  return(4/3*pi*r^3) #^ for power
}
 menu<-function() #no passing arguments/parameters and no return value
{
  cat("\n 1. area of circle \n 2. volume of sphere \n 3. Exit")
}
#main program
menu() #call function
ch=as.integer(readline("Enter Your choice : "))
if(ch==1)
{
  r=as.integer(readline("Enter radius : "))
  a=area_circle(r)
cat("Area of circle : ",a)
}else
  if(ch==2)
  {
    r=as.integer(readline("Enter radius : "))
    v=volume.sphere(r)
    cat("Volume of Sphere : ",v)
  }else
  {
    print("\n Invalid choice")
  }