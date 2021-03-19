f<-function(x)
{
  return(x+y)
}
y<-3 #global variable or y<<-3
print(f(5))

setClass("numbers",representation(a="numeric",b="numeric"))
num1=new("numbers",a=12,b=15)
num1@a
setMethod("print","numbers",function(x)
{
  cat("A=",x@a)
})

print(num1)
a.b=function(obj)
{}
setMethod("a.b","numbers",function(obj)
{
  cat("a=",obj@a,"b=",obj@b)
})
"a.b"