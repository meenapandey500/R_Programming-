#Generating factor levels : inbuilt function gl( ) inbuilt function
#syntax : gl(n,k,labels)
# n : is a integer giving the number of levels
# k : is a integer giving the number of replications(repeated)
#labels is a vector of labels for the resulting factor levels
fruits=gl(4,20,labels=c("Apple","Banana","Water Malon","Orange"))
print(fruits)