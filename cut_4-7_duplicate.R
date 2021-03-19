#Handle null values 
#Create a small dataset
Name=c("Anu","kamal","Rekha")
Gender=c("Female","Male","Female")
Age=c(45,53,NA) #NA means null values not applicable
#create dataframe from 3 vectors name,Gender and Age
df=data.frame(Name,Gender,Age) #df user defined object
print(df)
#Check null values in given data frame
is.na(df) #return answer in True/False means boolean form
#we also can find the sum of missing in datasets 
sum(is.na(df)) #how many missing value in our dataset
#we also can find the percantage of missing in datasets use mean()
#inbuilt function
mean(is.na(df))
#Now we will use the function to remove null values : omit()
na.omit(df)

#Removing Duplicate cases 
#create a simple dataframe 
salary=c(20000,30000,25000,40000,30000,34000,30000)
famile.size=c(4,3,2,2,3,4,3)
car=c("Luxury","Compact","Midsize","Luxury","Compact","Compact","Compact")
#create a dataframe with the help of vectors
df=data.frame(salary,family.size,car)
print(df)

#to remove duplicate record then use unique()
df_new=unique(df)
print(df_new)
print(df)

#Identifying duplicates (without deleting them)
#then use duplicated() and answer return in boolean (True/false)
duplicated(df)

#To list the duplicate cases , use the following code 
df[duplicated(df),]

#To load data set students.csv
student<-read.csv("students.csv")
print(student)
#Income is a numeric variable, and you may want to create a 
#categorical variable from it by creating bins. 
#Suppose you want to label incomes of $10,000 or below as Low, 
#incomes between $10,000 and $31,000 as Medium, and the rest as High. 
 #Create a vector of break points : 
b=c(-Inf,10000,31000,Inf)  #Inf means infinity

#create a vector of names for break points :
names=c("Low","Medium","High")
#cut the vector using break points :
student$income_category=cut(student$Income,breaks=b,labels=names)
#here cut() inbuilt function of R prog.
#and income_category  : This is new column which add student dataset
print(student)



