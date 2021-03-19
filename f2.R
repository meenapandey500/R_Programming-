#Default argument 
#create function with arguments/parameters and return value
#for eg.
#Write a program to find the square of given number 
square<-function(n=1) #default argument
{
  return (n*n)
}
#main program
ans=square() #call the function without giving any argument/parameter
cat("Square : ",ans)
n=as.integer(readline("Enter Number : "))
ans=square(n)#call the function with giving new values of the argument/parameter
cat("Square of given number : ",ans)
