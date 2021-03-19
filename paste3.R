a=seq(10,15) #generate sequence by default +1 means 10 11 12 13 14 15
#o/p  x001 x002 x003 x004 x005
print(sprintf("x%03d",a)) #x001

#3 digits : 03   d for integer
#input b,h,r,l,w
ch=readline()
ch=toupper(ch)
switch(ch,
       "R"=cat("Area of circle : ",round(l*w,digits=1)),
       "T"=cat("Area of Trianle : ",b*h/2),
       "C"=cat("Area of circle :",3.14*r*r),
       print("Invalid choice")
       )