#2) Indexing with a character vector
#For eg.
x<-c("shubham"=22,"arpita"=23,"vaishali"=25,"anu"=26,"deepak"=10)  
print(x)
#to retrive marks of anu
print(x["anu"])
#To retrieve marks of arpita and deepak
print(x[c("arpita","deepak")])
