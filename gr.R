#WAP to find the greatest of 2 nos.
a=as.integer(readline(prompt="Enter Number a : "))
b=as.integer(readline("Enter Number b : "))
if(a>b)
{
  cat(a," is greatest no.")
}else if(b>a)
{
  cat(b, " is greatest no.")
}else
{
  cat("both number are same")
}