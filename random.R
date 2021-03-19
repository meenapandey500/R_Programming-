library(dplyr)
mydata = read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
sample_n(mydata,3)
#Example 2 : Selecting Random Fraction of Rows
The sample_frac function returns randomly N% of rows. In the example below, it returns randomly 10% of rows.
sample_frac(mydata,0.1)
#The distinct function is used to eliminate duplicates.
x1 = distinct(mydata)
x1
head(X1)
head(x1)


