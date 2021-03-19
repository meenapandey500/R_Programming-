#Converting List to vector then use inbuilt function unlist( )
#for example we have 2 list
X=list(20:25) #start=20  stop<=25 step=+1 means 20,21,22,23,24,25
Y=list(30:35) #30,31,32,33,34,35
print(X)
print(Y)
#Convert the list to vectors 
v1=unlist(X)
v2=unlist(Y)
print(v1)
print(v2)
#Now Add the two vectors v1 and v2
c=v1+v2
print("Sum of vectors : ")
print(c)