#Wap to check the given number is strong no. or not .
factorial<-function(x)
{
  ans=1
  while(x>0)
  {
    ans=ans*x
    x=x-1
  }
  return (ans)
}

strong.no<-function(n) #outer function
{
  sum=0
  while(n>0)
  {
    y=n%%10
    f=factorial(y) #inner function
    sum=sum+f
    n=floor(n/10)  #n=as.integer(n/10)  or n=n%/%10
  }
  return (sum)
}
#main 
n=as.integer(readline(prompt="enter number"))
temp=n
s=strong.no(n)
print(s)
if(s==temp)
{
  cat("\n Strong no.")
}else
  
  {cat("\n not a strong no.")}