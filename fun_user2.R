#keyword argument
addition<-function(a=5,b=8,c=2)
{
  return(a+b+c)
}
#main
cat("sum : ",addition(a=12))
cat("\nsum : ",addition(c=6,b=14))
cat("\n sum : ",addition(3,6,7))
cat("\n sum : ",addition(5,7))