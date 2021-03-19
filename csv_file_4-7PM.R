#Read csv file in R prog. then use inbuilt function read.csv("filename.csv")
#path\\filename  for f:\\file.csv
data<-read.csv("employees.csv") #data user defined object 
print(data)
#Analyzing the csv file
#Check object data is a dataframe then use is.data.frame(object name) answer
#will return TRUE/FALSE
print(is.data.frame(data))
#To display no. of columns  in given data frame
print(ncol(data))
#To display no. of rows  in given data frame
print(nrow(data))
#Get the max salary from data frame 
print(max(data$salary))
#Get the employee's detail having max salary
s=subset(data,salary==max(salary))
print(s)
#Get the Employees in IT department whose salary is greater than 40000
info<-subset(data,salary>40000 & dept=="IT")
print(info)

#Get the Employees not in IT department whose salary is greater than 40000
info<-subset(data,salary>40000 & dept!="IT")  #!= not equal to
print(info)

#Get the employee who joined on or after 2016
info<-subset(data,as.Date(doj)>as.Date("2016-01-01"))
print(info)

#yyyy-mm-dd  format of data by default
#Write filtered(searched )data into a new file (suppose new file name : output.csv)
#then use inbuilt function write.csv(filterdata's object,"new filename.csv")
write.csv(info,"output.csv",row.names=FALSE) #bydefault row.names=TRUE
#To read output.csv file then read.csv() inbuilt function of R progr.
df=read.csv("output.csv")
print(df)

print(data)

#To arrange record in ascending order according to name column of data object
#order() inbuilt function
data[with(data,order(name)),] #by default ascending order if decreasing=TRUE then
#descending order

#another method to create a data frame :- cbind()
#create vector object
city=c("Bhopal","Mumbai","Hyderabad")
state=c("MP","Maha","Telagana")
pincode=c(462023,229087,876543)
#create data frame address
address<-data.frame(cbind(city,state,pincode))
print(address)

#Create another dataframe address1
address1=data.frame(city=c("Agra","Indore"),state=c("UP","MP"),
                    pincode=c("234567","462024"))
print(address1)
#merge both data frame address and address1 and hold in new address data frame
#rbind()
new_address=rbind(address,address1)
print(new_address)



