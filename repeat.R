#to find the sum of 2 nos.
repeat
{
a=as.numeric(readline(prompt="enter number a"))
b=as.numeric(readline(prompt="enter number b"))
c=a+b
cat("sum : ",c)
ans=readline(prompt="Do you want to continue y/n")
if(ans=="n")
{
  break  #exit from loop
}
}#end of repeat
print("Successfully")