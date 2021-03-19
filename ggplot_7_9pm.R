#install.packages("ggplot2")
library(ggplot2)
data()
print(mpg)
colnames(mpg)
#to define canvas

library(dplyr)
t=select(mpg,class,displ)
View(t)
ggplot(mpg) #create canvas
ggplot(mpg,aes(x=displ,y=hwy)) 
#assign data in x & y axis
# data plotted
#scatter plot
##we can add a mapping from the class of the cars to a
#color characteristic:
ggplot(mpg,aes(x=displ,y=hwy))+ geom_point(color="red")

#smooth graph
ggplot(mpg, aes(x = displ, y = hwy)) +geom_smooth(color="green")

#bar graph
ggplot(mpg, aes(x = manufacturer)) +geom_bar(color="yellow")
View(mpg)

ggplot(mpg, aes(x = hwy)) +geom_histogram() 

ggplot(mpg, aes(x = displ, y = hwy)) +geom_point() +geom_smooth()

ggplot(mpg, aes(x = class, fill = drv)) +  geom_bar()+
  labs(title = "Car Company",
subtitle = "Fuel economy data from 1999 and 2008 for 38 popular models of cars",
            x = "Class of Car",
              y = "Count",
              color = "DRIVE")
 ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")

 
 
t=mpg %>%
  select(drv,class)
View(t)
