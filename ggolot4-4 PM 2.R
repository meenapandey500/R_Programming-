library(ggplot2)
a=1:10 #create vector a 1 to 10 #input variable
b=a^2 #^power #output variable means target
print(a)
print(b)
#create a dataframe df
df=data.frame("X"=a,"Y"=b)
print(df)
ggplot(df,aes(x=X,y=Y))+geom_line(color="green")+geom_point(color="red")

#pie graph 
#scan()
#sunday : final test


