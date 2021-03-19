#nested for loop
for(i in 1:5) #i=1 i<=5 then process then i=i+1
{
  for(j in 1 :i)  #j=1 j<=i then process then j=j+1
  {
    cat("*")
  }
  cat("\n")
}