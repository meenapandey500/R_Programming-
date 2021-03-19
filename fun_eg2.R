#create a function with arguments
fun1<-function(a=3,b=7,c=12) #defualt argument
{
  ans=(a+b+c)
return (ans)
}
#call the function without giving any argument
cat("\n answer : ",fun1())
#call the function with giving new values of the arguments
cat("\n answer : ",fun1(10,20,30))
cat("\n answer : ",fun1(c=50,a=90)) #keyname argument