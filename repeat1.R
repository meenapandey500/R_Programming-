#WAP to find the sum of 2 nos. until answer=y means yes
repeat
{
a=as.integer(readline("Enter number a"))
b=as.integer(readline("Enter number b"))
c=a+b
cat("\n sum : ",c)
ans=readline("Continue y/n")
if(ans=="n")
{
  break  #exit from loop
}
}
print("bye")