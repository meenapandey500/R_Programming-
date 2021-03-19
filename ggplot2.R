library(ggplot2)
# create canvas
ggplot(mpg)

# variables of interest mapped
ggplot(mpg, aes(x = displ, y = hwy))

# data plotted
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()
#we can add a mapping from the class of the cars to a color characteristic:
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()
mpg
(mpg$class)
#
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "blue")

#Different plot

# Left column: x and y mapping needed!
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth()

# Right column: no y mapping needed!
ggplot(data = mpg, aes(x = class)) +
  geom_bar()  

ggplot(data = mpg, aes(x = hwy)) +
  geom_histogram() 

# plot with both points and smoothed line
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "blue") +
  geom_smooth(color = "red")

# color aesthetic passed to each geom layer
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(se = FALSE)

# color aesthetic specified for only the geom_point layer
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE)

#Statistical Transformations
ggplot(mpg, aes(x = class)) +
  geom_bar()


class_count <- dplyr::count(mpg, class)
class_count


#We can use stat = "identity" within geom_bar to plot our bar height values to this variable. Also, note that we now include n for our y variable:
  
  ggplot(class_count, aes(x = class, y = n)) +
  geom_bar(stat = "identity")

  #For example, here we create a scatter plot of highway miles for each displacement value and then use stat_summary to plot the mean highway miles at each displacement value.
  ggplot(mpg, aes(displ, hwy)) + 
    geom_point(color = "grey") + 
    stat_summary(fun.y = "mean", geom = "line", size = 1, linetype = "dashed")  
  #Position Adjustments
  # bar chart of class, colored by drive (front, rear, 4-wheel)
  ggplot(mpg, aes(x = class, fill = drv)) + 
    geom_bar()

  
  #Labels & Annotations
  ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
    geom_point() +
    labs(title = "Fuel Efficiency by Engine Power",
         subtitle = "Fuel economy data from 1999 and 2008 for 38 popular models of cars",
         x = "Engine power (litres displacement)",
         y = "Fuel Efficiency (miles per gallon)",
         color = "Car Type")
  
  gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
    geom_point(aes(col=state), size=3) +  # Set color to vary based on state categories.
    geom_smooth(method="lm", col="firebrick", size=2) + 
    coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) + 
    labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")
  
  library(dplyr)
  
  # a data table of each car that has best efficiency of its type
  best_in_class <- mpg %>%
    group_by(class) %>%
    filter(row_number(desc(hwy)) == 1)
  
  ggplot(mpg, aes(x = displ, y = hwy)) + 
    geom_point(aes(color = class)) +
    geom_label(data = best_in_class, aes(label = model), alpha = 0.5)
  