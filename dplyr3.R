library(dplyr)
msleep <- read.csv("https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv")
head(msleep)
#Select a set of columns: the name and the sleep_total columns.

sleepData <- select(msleep, name, sleep_total)
head(sleepData)
#To select all the columns except a specific column, use the "-" (subtraction) operator (also known as negative indexing)

head(select(msleep, -name))
#To select a range of columns by name, use the ":" (colon) operator

head(select(msleep, name:order)) #from name column to order column
#To select all columns that start with the character string "sl", 
#use the function starts_with()

head(select(msleep, starts_with("sl")))

#Filter the rows for mammals that sleep a total of more than 16 hours.

filter(msleep, sleep_total >= 16)

#Filter the rows for mammals that sleep a total of more than 16 hours and have a body weight of greater than 1 kilogram.

filter(msleep, sleep_total >= 16, bodywt >= 1)
#Filter the rows for mammals in the Perissodactyla and Primates taxonomic order

filter(msleep, order %in% c("Perissodactyla", "Primates"))
