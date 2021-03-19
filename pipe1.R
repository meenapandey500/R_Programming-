library(dplyr)
x <- c(-1, 0, NA, 22, NA)
x %>% mean(na.rm=TRUE)
#The diff command calculates the differences between all consecutive values of a vector. The argument lag specifies the lag of the differences.
temperature <- c(30, 0, 12, 40, 28)
diff(temperature, lag=1) #between two consecutive days(0-30,12-0,40-12,..)
diff(temperature, lag=2) #between a day and two days ago(12-30,40-0,..)

