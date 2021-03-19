c1<-1:10
print(c1)
letters #to display a-z alphabets in small letter
c2<-letters[1:10]
print(c2)
df<-data.frame(idno=c1,name=c2)
print(df)
df$name=NULL
print(df)
df[-1,]

#create vector object
city<-c("bhopal","hyderabad","agra","mumbai")
state<-c("MP","Telagana","UP","Ma")
zipcode<-c(23455,54544,77766,45544)
address<-data.frame(cbind(city,state,zipcode))
print(address)
new.address=data.frame(city=c("palghar","Raipur"),
                state=c("Gujrat","CG"),
              zipcode=c("43344","34434"))
print(new.address)

all.address<-rbind(address,new.address)
print(all.address)


