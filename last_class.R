#The factor() Command Factors are used to represent categorical data.
#gender ==>male/female ==>categorical type
#fuel-type : diesel/gas/petrol ==>categorical data
name<-c("Suresh","Anu","Geeta","Vijay")
gender <- factor(c("male", "female", "female", "male"))
levels(gender)
nlevels(gender)
fuel_type=factor(c("gas","gas","diesel","gas","petrol"))
levels(fuel_type)
nlevels(fuel_type)

food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels = c("low", "medium", "high"))
levels(food)
min(food) # doesn't work

food <- factor(food, levels = c("low", "medium", "high"), ordered = TRUE)
levels(food)
min(food) # works!


as.character(1:2) #(1,2) #"1" "2"
1/0  #inf
0/0  #output NaN

x <- c("a", NA, "c", "d", NA)
y <- c("a", "b", "c", "d", "e")
is.na(x) #To check null value  of each index
anyNA(x) # to check overall x if found null in any index of x then return True
anyNA(y)

data()
library(ggplot2)
#mtcars inbuilt dataset
mtcars
ggplot(mtcars,aes(mpg))+geom_boxplot()
#group according to cyl
p = ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_boxplot(aes(fill = factor(cyl)))




