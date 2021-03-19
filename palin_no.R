#WAP To check the given number is palindrom or not
n=as.integer(readline("Enter Number :"))
x=n #copy original value into x
r=0
while(n>0)
  {
    y=n%%10 
    #formula of reverse
    r=r*10+y   
    n=n%/%10  
  }
cat("Reverse No. :",r)
cat("Original No. : ",x)
if(r==x)
{
  cat(x," is palindrom number ")
}else
{
  cat(x," is not a palindrom")
}