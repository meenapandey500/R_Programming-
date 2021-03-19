# Creating lists.  
list1 <- list(10:20)  
print(list1)  

list2 <-list(5:14)  
print(list2)  

# Converting the lists to vectors.  
v1 <- unlist(list1)  
v2 <- unlist(list2)  

print(v1)  
print(v2)  

adding the vectors  
result <- v1+v2  
print(result)  

# Creating two lists.  
Even_list <- list(2,4,6,8,10)  
Odd_list <- list(1,3,5,7,9)  

# Merging the two lists.  
merged.list <- list(Even_list,Odd_list)  

# Printing the merged list.  
print(merged.list)  

