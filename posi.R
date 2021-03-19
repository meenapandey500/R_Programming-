#WAP to chekc the given number is +ve number , -ve number or zero
a=as.integer(readline("Enter Number : "))
if(a>=0) #outer if
{
  if(a>0) #inner if
  {
    cat(a," is positive no.")
  }else   #else of inner
  {
    cat("Number is zero")
  }
}else #else of outer if
{
  cat(a," is -ve number")
}