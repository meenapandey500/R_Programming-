require(utils)
#Step 1 : Load DataSet pos_salary.csv
data=read.csv("pos_salary.csv")
data
attach(data)
#Step2: Fit a linear model first lm(y~x)
linear.model=lm(Salary~Level) #y=mx+b here Salary Dependent variable 
#plot 
plot(Level, Salary, ylab = "Salary ", cex.lab = 1.3, col = "red")
abline (lm(Salary ~ Level), col = "blue")
summary(linear.model)

#Step 3: Fitting a polynomial model
Level2=Level^2
Level3=Level^3
Level4=Level^4
quadratic.model = lm(Salary ~ Level + Level2+Level3+Level4)
summary (quadratic.model)
#y=m1x1+m2(x1^2)+b 
#here m1 and m2 slope and b intercept
#Salary=-132871 *Level+19432 *Level^2+(232167 )
#Predicitons  of salary
levelvalues = c(1.5,2.5,3.5,4.5,5.5,6.5,7.5,8.5,9.5)  #(For testing)
levelvalues
predicted_salary <- predict (quadratic.model,
                  list (Level=levelvalues, Level2=levelvalues^2,
                        Level3=levelvalues^3,Level4=levelvalues^4))
predicted_salary
#prediction with the help of linear.model
#predicted_salary <- predict(linear.model,
 #                            list(Level=levelvalues))
#predicted_salary
#plot 
plot (Level, Salary,col="red")
lines(levelvalues, predicted_salary, col = "darkgreen", lwd = 3)


