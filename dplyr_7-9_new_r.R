#install.packages("dplyr")
library(dplyr) #call dplyr library in program
#To lad csv file
data1=read.csv("house_price.csv")
print(data1)
colnames(data1)#to display column name
#tO DISPLAY ALL DETAILS OF LOTAREA,YEARBUILT,gARAGEaREA,SALECONDITION
#AND SALEPRICE THEN USE SELECT() IN DPLYR LIBRARY
#syntax of select() ==> select(objectname,column1,column2,....)
d<-select(data1,LotArea,YearBuilt,GarageArea,SaleCondition,SalePrice)
print(d)
#To select all the columns except a specific column,use the -operator
d<-select(data1,-X,-Id,-MSZoning,-Alley)
print(d)
#To select a range of columns by LotFrontage to Utilities,use the : 
#operator
colnames(data1)
d<-select(data1,LotFrontage:Utilities)
print(head(d))
#To select all columns that start with L, use the inbuilt function 
#starts_with()
d<-select(data1,starts_with('L'))
print(head(d))
#To select all columns that end with e, use the inbuilt function 
#ends_with()
d<-select(data1,ends_with('e'))
print(head(d))
#Selecting Variables contain 'l' in their names
d = select(data1, contains("l",ignore.case=FALSE))
print(head(d))

#2. Filter()  --> to retrieve paritcular row means record from given
#dataset means selecting rows
data()
mtcars #inbuilt dataset
#To retrieve those records whose hp(horse power)<100
#then use filter() syntax : filter(dataset,condition)
c=filter(mtcars,hp<100)
print(c)
filter(data1,SalePrice<100000)
mtcars
#To retrieve those records whose hp(horse power)<100 and gear==3
c=filter(mtcars,hp<100,gear==3) #and operator 
print(c)

head(data1)
# select() and filter() both are together used because we wants to retrieve
#particular columns and particular rows
#To display SaleCondition ,LotArea and SalePrice of those records 
#whose SalePrice<100000
d<-select(data1,SaleCondition ,LotArea,SalePrice)
filter(d,SalePrice<100000)







