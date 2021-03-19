#write a program to check the given quadratic 
#equation are real,equal or imaginary root
a=readline(prompt="enter number")
a=as.integer(a)
y=a%%2
if(y==0)
{
  print("No. is even")
}else 
{
  print("no. is odd")
}
