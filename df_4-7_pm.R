exam_data=data.frame(name=c("Kamal","Renu","Tina","Rekha","Suresh","Poonam"),
                  score=c(56,78,89,90,45,60),attempts=c(1,NA,2,NA,1,2),
                  qualify=c("no","yes","yes","yes","no","no"))
print(exam_data)
#NA means not applicable means null values represent
#To check null values in attempts column in exam_data dataframe
#Then use is.na( )  inbuilt function
#Syntax : is.na(dataframename$columnname) ,and it is return answer in coolean form 
#means TRUE /FALSE
print(is.na(exam_data$attempts))
#To count the null values in attempts column in exam_data dataframe
#Then use sum( )
print(sum(is.na(exam_data$attempts)))

#To convert data from matrix to DataFrame
#To create a matrix
A=matrix(1:20,nrow=5)
print(A)
#To convert Matrix M into DataFrame then 
#syntax object of data frame=data.frame(matrix name)
df<-data.frame(A)
print(df)




