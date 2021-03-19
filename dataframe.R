#we want to work on real data set 
#.csv ==>comma seperated values
d<-read.csv('f://company_sales_data.csv')
print(d)
head(d) #to show first 6 record from top 
colnames(d)
ncol(d)
head(d,n=3) #to show first 3 records from top
tail(d) #to show last 6 records (from bottom)
tail(d,n=2) #to show last 2 records
colnames(d)
d$toothpaste #to display all rows of toothpaste column
d[,'toothpaste'] #to display all rows of toothpaste column
d[['toothpaste']]#to display all rows of toothpaste column

#to display multiple column data 
head(d[c('facewash','toothpaste')])


summary(d)
print(df)

summary(df)
data()
state.x77



#create dataframe
c1=c('Tendulakar','Kohali','Dhoni','Bhurah','Chahal')
c2=c(10000,7000,9000,3000,1000)
c3=c(50,60,100,600,800)
cricket=data.frame(player=c1,runs=c2,wickets=c3)
print(cricket)
#conditional selection with subset() function
#to display those records (means to display all details of
#those players whose runs>7000
subset(cricket,subset=runs>7000)
#syntax of subset()
#subset(object of dataobject,subset=conditions)
subset(cricket,wickets>100)
subset(cricket,player=='Bhurah')
print(cricket)

#Ordering dataframe
#Ordering is done with order() function
order(cricket['runs']) 
#to display only row index according to ascending order of runs field
t<-order(cricket['runs'])
cricket[t,]#to display all records accoring to order index 


#to create a matrix
m=matrix(1:20,nrow=5)
print(m)
#to convert matrix into dataframe
df=data.frame(m)
print(df)
# renaming multiple column
colnames(df)[c(1,2,3,4)]=c('A','B','C','D')
print(df)
colnames(df)[2] <- 'deptno'
print(df)
#to add new record means new row of df
x<-data.frame(A=6,deptno=90,C=87,D=87)
df<-rbind(df,x)
print(df)
#to add new column at existing df
#rep() ==>replicate 
df$E <- rep(NA,nrow(df)) #E new colname
print(df)














