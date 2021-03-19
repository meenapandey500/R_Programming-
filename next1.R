#next statement
for(x in 1:10) # x=1 x<=10   x=x+1
{
  if(x==6 || x==8)
  {
    next  #means skip the value of 6
  }
  cat("\n",x)
}