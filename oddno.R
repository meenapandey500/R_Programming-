#WAP to find the sum of  first n odd nos.
n=as.integer(readline("How many times"))
i=1   #initial value
sum=0
while(i<=n)
{
  if(i%%2!=0)
  {
    sum=sum+i
  }
  i=i+1  #increment
}
cat("\n sum of odd nos. :",sum)