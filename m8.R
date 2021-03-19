# Defining the column and row names.  
row_names = c("row1", "row2", "row3", "row4")  
ccol_names = c("col1", "col2", "col3")  

R <- matrix(c(5:16), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))  
print(R)  

#Adding row  
rbind(R,c(17,18,19))  

#Adding column  
cbind(R,c(17,18,19,20))  

#transpose of the matrix using the t() function:  
t(R)  

#Modifying the dimension of the matrix using the dim() function  
dim(R)<-c(1,12)  
print(R)  
