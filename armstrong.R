#WAP to check the given number is armstrong number or not
n=as.integer(readline(prompt="enter number"))
x=n
s=0
while(n>0)
{
  y=n%%10
  s=s+(y^3)
  n=floor(n/10)
}
print(s)
if(x==s)
{
  print("Armstrong no.")
}else
{
  print("Not a Armstrong no.")
}