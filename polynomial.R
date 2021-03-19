require(utils) #utility ==>used for Attach()
A <- structure(list(Time = c(0, 1, 2, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30),
                    Counts = c(126.6, 101.8, 71.6, 101.6, 68.1, 62.9, 45.5, 41.9, 46.3, 34.1, 38.2, 41.7, 24.7, 41.5, 36.6, 19.6, 22.8, 29.6, 23.5, 15.3, 13.4, 26.8, 9.8, 18.8, 25.9, 19.3)),
               .Names = c("Time", "Counts"),
               row.names = c(1L, 2L, 3L, 5L, 7L, 9L, 10L, 11L, 12L, 13L, 14L, 15L, 16L, 17L, 19L, 20L, 21L, 22L, 23L, 25L, 26L, 27L, 28L, 29L, 30L, 31L),
               class = "data.frame")

A
attach(A)
Names(A)
#Step2: Fit a linear model first lm(y~x)
linear.model=lm(Counts~Time) #y=mx+b here Counts Dependent variable 

#and Time Independent variable and linear.model==>user defined variable
#plot the model syntax plot(x,y)
plot (Time, Counts, ylab = "Counts ", cex.lab = 1.3, col = "red" )
abline (lm(Counts ~ Time), col = "blue")
#Step 3: Fitting a polynomial model
Time2=Time^2
quadratic.model = lm(Counts ~ Time + Time2)
summary (quadratic.model)
summary(linear.model)
#y=m1x1+m2(x1^2)+b 
#here m1 and m2 slope and b intercept
#Counts=-7.42253*Time+0.15061*Time^2+(110.10749)
#Predicitons  
timevalues = seq (0, 30, 0.1)  #(For testing)
timevalues
predicted_counts <- predict (quadratic.model,
                            list (Time=timevalues, Time2=timevalues^2))
predicted_counts
plot (Time, Counts,col="red")
lines(timevalues, predicted_counts, col = "darkgreen", lwd = 3)




