#i=5 #line initialize
#while(i>=1) #outer condition
#{
 # j=1  #column initialize
 # while(j<=i) #inner condition
  #{
   # cat("*")
   # j=j+1
 # }
  #cat("\n")
 # i=i-1
#}

for(i in 1:5) #outer loop i=1 i<=5 then process after then increment by 1
{
  for(j in 1:i) #inner loop j=1 j<=i ==>true then process after than j=j+1
  {
    cat("*")
  }
  cat("\n")
}


for(i in 5:1)
{
  for(j in 1:i) #inner loop
  {
    cat("*")
  }
  cat("\n")
}

