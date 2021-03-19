#install.packages("ggplot2") 
#call ggplot2 packages with the help of library()
library(ggplot2)
a=1:10 #create vector a 1 to 10 #input variable
b=a^2 #^power #output variable means target
print(a)
print(b)
#create a dataframe df
df=data.frame("X"=a,"Y"=b)
print(df)
#Step 1 :To create a canvas
ggplot(df)

#Step 2 : To define axisof X and Y 
ggplot(df,aes(x=X,y=Y))
#aes : inbuilt function aesthetic

#step 3 :
#Create scatter plot  : use inbuilt function 
#geom_point() which is inbuilt function of
#ggplot2 package
ggplot(df,aes(x=X,y=Y))+geom_point()

#if change color
ggplot(df,aes(x=X,y=Y))+geom_point(color="red")
#if define title and subtitle  of plot

#set scale of Y : use ylim parameter
ggplot(df,aes(x=X,y=Y))+geom_point(color="red")+
  labs(title="ITVedant Pvt. Ltd.",subtitle="Andheri East")+
  coord_cartesian(ylim=c(20,100))

#bar graph with the help of ggplot2 pacakages
W<-c(7,5,12,28,3,41) #weight
M<-c("Mar","Apr","May","Jun","Jul","Aug") #Month
#converts W and M vectors into dataframe
df=data.frame("Weight"=W,"Month"=M)
print(df)
#create bar graph then geom_bar() by default vertical barplot
ggplot(df,aes(x=Month,y=Weight))+geom_bar(stat="identity",width=0.2)

#create bar graph then geom_bar() by default Horizontal  barplot then 
#use coord_flip() inbuilt function
ggplot(df,aes(x=Month,y=Weight))+geom_bar(stat="identity",width=0.2)+
  coord_flip()


#automobile_data.csv
#load csv file anf hold user defined dataframe car
car=read.csv("automobile_data.csv")
head(car)
colnames(car)
#Check relation between width of car (input)and target means output
#price of car then use scatter plot : geom_point()
#library(ggplot2)
ggplot(car)

ggplot(car,aes(x=width,y=price))

ggplot(car,aes(x=width,y=price,color="make"))+geom_point()

#bar graph : is also known as frequency : -
colnames(car)
#How many diesel_car and gas car in this dataset car
ggplot(data=car,aes(x=fuel.type))+geom_bar()

head(car)

ggplot(data=car,aes(x=body.style))+geom_bar()

#png(file="f://plot3.png")
ggplot(data=car,aes(x=fuel.type,fill=body.style))+geom_bar()+
  labs(title="AutoMobile Car",subtitle="Andheri East",x="Fuel Type
       Of Car",y="Frequency",color="Body Style of car")+
  theme_classic(base_size=15)
#theme
#theme.linedraw( ) : black lines around the plot
#theme_light() : light gray lines()
#theme_minimal( ): no background annotations
#theme_classic() : theme with axis lines and no grid lines
#dev.off()







