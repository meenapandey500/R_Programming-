#Removing duplicate cases
#Create a sample data frame:
salary <- c(20000, 30000, 25000, 40000, 30000, 34000, 30000)
family.size <- c(4,3,2,2,3,4,3)
car <- c("Luxury", "Compact", "Midsize", "Luxury", "Compact", "Compact", "Compact")
prospect <- data.frame(salary, family.size, car)
prospect
#The unique() function can do the job. It takes a vector or data
#frame as an argument and returns an object of the same type 
#as its argument but with duplicates removed.

Get unique values:
prospect.cleaned <- unique(prospect)
nrow(prospect)
nrow(prospect.cleaned)
#Identifying duplicates (without deleting them)
#For this, use the duplicated() function:

duplicated(prospect)
'''rom the data, we know that cases 2, 5, and 7 are duplicates. 
Note that only cases 5 and 7 are shown as duplicates.
In the first occurrence, case 2 is not flagged as a duplicate.'''

#To list the duplicate cases, use the following code:
prospect[duplicated(prospect), ]
