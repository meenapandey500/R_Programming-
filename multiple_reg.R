#multiple regression
data()
#mtcars  inbuilt dataset
head(mtcars)
colnames(mtcars)
input <- mtcars[,c("mpg","disp","hp","wt")]

# Create the relationship model. lm(y~(x1+x2+x3_..+xn))
model <- lm(mpg~disp+hp+wt, data = input)

# Show the model.
print(model)

# Get the Intercept and coefficients as vector elements.
cat("# # # # The Coefficient Values # # # ","\n")
#coef() means slope find out
a <- coef(model)[1] #intercept
print(a)

Xdisp <- coef(model)[2] #slope  of disp column
Xhp <- coef(model)[3] #slope of hp column
Xwt <- coef(model)[4] #slope of wt column

print(Xdisp)
print(Xhp)
print(Xwt)
#For a car with disp = 221, hp = 102 and wt = 2.91 
#the predicted mileage(mpg) is ??? y=m1x1+m2x2+m3x3+b
(-0.0009370091)*221+(-0.03115655)*102+(-3.800891)*2.91+(37.10551)
print(summary(model))
