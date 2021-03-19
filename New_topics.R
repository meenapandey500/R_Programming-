#Income is a numeric variable, and you may want to create a 
#categorical variable from it by creating bins. 
#Suppose you want to label incomes of $10,000 or below as Low, 
#incomes between $10,000 and $31,000 as Medium, and the rest as High. 
#We can do the following:'''
student<-read.csv("students.csv")
student
#Create a vector of break points:
b <- c(-Inf, 10000, 31000, Inf)
#Create a vector of names for break points:
names <- c("Low", "Medium", "High")
#Cut the vector using the break points:
student$Income.cat <- cut(student$Income, breaks = b, labels = names)
student