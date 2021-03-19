yr=as.integer(readline("enter year"))
if(yr%%4==0)
{
  if(yr%%100==0)
  {
    if(yr%%400==0)
    {
      cat(yr," is a leap year")
    }else
    {
      cat(yr," is not a leap year")
    }
  }else
  {
    cat(yr," is a leap year")
  }
}else
{
  cat(yr," is not a leap year")
}
