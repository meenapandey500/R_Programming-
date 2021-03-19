library(ggplot2)
data1<-read.csv("Automobile_data.csv")
# data plotted
ggplot(data1, aes(x = highway.mpg, y = price)) +
  geom_point()
#we can add a mapping from the class of the cars to a color characteristic:
ggplot(data1, aes(x = highway.mpg, y = price,color=make)) +
  geom_point()
ggplot(data1, aes(x = highway.mpg, y = price)) +
  geom_smooth()


ggplot(data =data1, aes(x = fuel.type)) +
  geom_bar()  
ggplot(data =data1, aes(x = fuel.type,fill=body.style)) +
  geom_bar()  



class_count <- dplyr::count(data1, fuel.type)
class_count

ggplot(class_count, aes(x = fuel.type, y = n)) +
  geom_bar(stat = "identity")


class_count <- dplyr::count(data1, body.style)
class_count

#scatter graph
ggplot(data1, aes(x = width, y = price, color = make)) +
  geom_point() +
  labs(title = "Auto Mobile Company",
       subtitle = "Andheri Eash Mumbai",
       x = "Width of Car",
       y = "Price of Car",
       color = "Manufacturing company")











ggplot(class_count, aes(x = body.style, y = n)) +
  geom_bar(stat = "identity")
library(dplyr)
best_in_class <- data1 %>%
  group_by(fuel.type) %>%
  filter(row_number(desc(price)) == 1)
ggplot(data1, aes(x = highway.mpg, y = price)) + 
  geom_point(aes(color = fuel.type)) +
  geom_label(data = best_in_class, aes(label =make), alpha = 0.5)

