#WAP to check the given year is leap year or not.
year<-as.integer(readline("Enter Year : "))
x=year%%4
y=year%%100
z=year%%400
if((x==0 && y!=0) || (z==0)  ) 
{
  cat(year," is leap Year")
}else
{
  cat(year," is not a leap Year")
}