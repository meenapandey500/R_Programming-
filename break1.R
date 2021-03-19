#use of break statement
#break means exit from loop
for(i in 1:10)  #i=1 i<=10  i=i+1
{
  if(i==6)
  {
    break #exit from loop
  }
  cat("\n",i)
}
cat("\n Good Bye")