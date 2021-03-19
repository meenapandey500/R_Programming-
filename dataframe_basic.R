#to create a dataframe 
c1<-11:20
c2<-LETTERS[1:10]
print(c1)
print(c2)
df<-data.frame(Idno=c1,name=c2)
print(df)
#how many rows in data.frame  df
nrow(df)
#how many no. of columns in data.frame df
ncol(df)
colnames(df) #to display column name
rownames(df) #to display  row name
str(df) 
#to Access particular element from data frame
#various method use to access element from DF
#: to access element at 5th row of 2nd column
#1 method  
df[[5,2]]
print(df)
#2 method
df[[5,"Idno"]]
print(df)
#to changes data 
#to change the value of Idno variable with 100 of 2nd row
df[[2,"Idno"]]<-100
print(df)
#to retrieve element column wise
#to retrieve all details of 1st row
df[2,]
#to retrieve element row wise
df[,2] #to retrieve first column of all student (rows)
#to retrieve element through slicing [row range,col range]
df[5:8,2]  




