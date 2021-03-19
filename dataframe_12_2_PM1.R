exam=data.frame(name=c("kamal","renu","deepa","suresh","leena","pankaj"),
                score=c(45,78,98,56,48,87),attempts=c(1,NA,2,NA,1,2),
                qualify=c("yes",'no','no','no','yes','yes'))
print(exam)
#To check null values in attempts column in exam dataframe
#the use is.na() syntax : is.na(dataframename$columnname) and answer return
# in boolean form means TRUE/FALSE
print(is.na(exam$attempts))
#to count the null values in attempts column in exam dataframe
# then use sum()
print(sum(is.na(exam$attempts)))
#To delete a particular column from given dataframe
#then use function subset()
#syntax of subset() : subset(dataframe,select=-c(col1,col2,...))
#to delete name column from exam dataset
s=subset(exam,select=-c(name))
print(s)
print(exam)
#to delete multiple column means name,score column from exam dataset
s=subset(exam,select=-c(name,score))
print(s)  
#to delete a row in given dataframe
#suppose to delete 2nd row
d=exam[-2,]
print(d)  
#suppose to delete 3 and 5th record
d1=exam[-c(3,5),]
print(d1)  

print(exam)
colnames(exam)
new_exam=data.frame(name=c("rohan","yogesh"),score=c(56,89),attempts=
                      c(NA,2),qualify=c('no','yes'))
print(new_exam)
#rbind() to add new record in existing dataframe
#rbind(original dataframe,new dataframe)
exam=rbind(exam,new_exam)
print(exam)
#to delete all records in new_exam
new_exam=new_exam[-c(1,2),]
print(new_exam)
 print(exam) 
#Filter apply ==>to search a particular record whose score>60
 #use subset()==>subset(dataframename,condition)
subset(exam,score>60)
#to retrieve those records whose qualify=yes
subset(exam,qualify=='yes')
#to retrieve name and attempts column only of all student
exam[,c("name","qualify")]






 
 