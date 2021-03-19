# 1):   2)seq()   3)c()
v<-10:19
v
matrix(v)  #n*m  10*1
matrix(v,nrow=2) #2*5  #BYDEFAULT byrow=FALSE
matrix(v,nrow=2,byrow=TRUE)