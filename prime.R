
#List of Prime numbers from 2-100
isprime <- function(n)
  {
  lim <- floor(n/2)
   prime <- T
  for( i in 2:lim) 
    {
    if(n %% i == 0)
    {
      prime <- FALSE
    }
  }
  
  if(n==2) 
  {
    prime <- T
}
      if(prime) 
      {
    print(n)
      }
}
#main program
print("Prime Number")
for(j in 2:100)
{
  isprime(j)
}
