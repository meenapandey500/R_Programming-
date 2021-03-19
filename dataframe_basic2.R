
exam_data=data.frame(name=c("pankaj","renu","kamal","leena",
                            "pinky","lalita","babita","kiran",
                            "hina","deepa"),score=c(45,56,78,90,
                                                    45,78,90,54,
                                                    67,80),
                     attempts=c(1,NA,2,NA,2,NA,1,NA,2,1),
                     qualify=c('yes','no','yes','no','yes','no',
                               'no','no','no','yes'))
print(exam_data)
#tO CHECK NULL VALUES OF attempts column ==>is.na()
#is.na() inbuilt function ==>to check null values
print(is.na(exam_data$attempts))
#write a r program to count the number of NA values in a 
#attempts  column of exam_data dataframe  then use sum()
print(sum(is.na(exam_data$attempts)))
print(exam_data)
#to delete 2nd row from exam_data dataframe
d<-exam_data[-2,]
print(d)
#to delete multiple row from dataframe 
#to delete 4,6,8 row from exam_data 
d<-exam_data[-c(4,6,8),]
print(d)
#to delete multiple column  from dataframe then use subset()
#syntax of subset() :
#new df=subset(dataframename,select=-c(col1,col2))
#to delete name and qualify column from dataframe exam_data
d1=subset(exam_data,select=-c(name,qualify))
print(d1)





exam_data=data.frame(name=c("pankaj","renu","kamal","leena",
                            "pinky","lalita","babita","kiran",
                            "hina","deepa"),score=c(45,56,78,90,
                                                    45,78,90,54,
                                                    67,80),
                     attempts=c(1,NA,2,NA,2,NA,1,NA,2,1),
                     qualify=c('yes','no','yes','no','yes','no',
                               'no','no','no','yes'))
print(exam_data)
#replace NA values with 3 in attempts column
exam_data[is.na(exam_data)]=3
print(exam_data)
print(exam_data)

exam_data[3,"name"]<-'renu'
print(exam_data)
exam_data[2,"score"]=90
print(exam_data)
#order ==>to sort dataframe accoring to multiple columns
exam_data<-exam_data[with(exam_data,order(name,score)),]
print(exam_data)
data()











