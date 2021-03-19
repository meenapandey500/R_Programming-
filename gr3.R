#wap to find the greatest of 3 nos.
a=as.numeric(readline(prompt="enter no. a"))
b=as.numeric(readline(prompt="enter no. b"))
c=as.numeric(readline(prompt="enter no. c"))
if(a>=b && a>=c)
{
  cat(a," is greatest no.")
}else
  if(b>=a && b>=c)
  {
    cat(b," is greatest no.")
  }else
  {
    cat(c," is greatest no.")
  }
  