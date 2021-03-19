a=as.numeric(readline("Enter Number a"))
cat("\n 1. round() \n2. ceiling() \n 3. floor \n 4. truncate\n")
ch=as.integer(readline("enter your choice"))
switch(ch,
       cat("\n Value of a after decimal 2 digit :",round(a,digit=2)),
       cat("\n ceil : ",ceiling(a)),
       cat("\n floor : ",floor(a)),
       cat("\n Truncate :",trunc(a)),
       cat("\n Invalid choice")
)
