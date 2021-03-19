#wap to check the given year is leap year or not
year=as.integer(readline(prompt="enter year"))
if((year%%4==0 && year%%100!=0)||(year%%400==0))
{
  print("leap year")
}else
{
  print("not a leap year")
}