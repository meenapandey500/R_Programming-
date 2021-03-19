#WAP to print the table of any number
n=as.integer(readline("Enter Number : "))
i=1 #initialize value
while(i<=10)#condition
{
  ans=n*i
  cat("\n",n,"*",i,"=",ans)
  i=i+1 #increment 
}