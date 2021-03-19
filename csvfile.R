data<-read.csv("f://input.csv")
print(data)
sal<-max(data$salary)
print(sal)
v<-subset(data,salary==max(salary))
print(v)
retval <- subset( data, dept == "IT")
print(retval)
info <- subset(data, salary > 600 & dept == "IT")
print(info)

retval <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(retval)

write.csv(retval,"output.csv", row.names = FALSE)
newdata <- read.csv("output.csv")
print(newdata)

write.csv(retval,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)

