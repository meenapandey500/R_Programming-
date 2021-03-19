#scan() inbuilt function : It is used to scan and read data .It is usually used to
#read data into vector or list or from file
#syntax : scan("data.txt",what="character")
#parameter : text file to be scanned
# returns : scanned output
#Write a R-program to scan a text file 
#first create sample data.frame
data=data.frame(x1=c(1,2,3,4),
                x2=c(4,5,6,7),
                x3=c(8,9,10,11))
print(data)
#write data as txt file in current directory
write.table(data,file="file1.txt",row.names=FALSE)
#apply scan() to txt file
f=scan("file1.txt",what="character")
print(f)

#read txt file into list
f=scan("file1.txt",what=list("","",""))
print(f)

#skip first line of txt file
f=scan("file1.txt",skip=1)
print(f)


#to accept more than one input in one input function then scan()
a=scan() #scan use only  numeric type data only

print(a)



# more than one input and in single variable vector (collection of 
#similar type of data) then use scan()
#1. to input numeric value 
a<-scan()  # Reading in numeric data from keyword 
print(a)
mode(a) #check datatype 

#2. Reading in string type data from keyboard
n<-scan(what=" ") #empty quotes indicates character input
print(n)
mode(n) #check datatype 













