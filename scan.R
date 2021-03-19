data <- data.frame(x1 = c(4, 4, 1, 9),                # Create example data.frame
                   x2 = c(1, 8, 4, 0),
                   x3 = c(5, 3, 5, 6))
data                                   
write.table(data,                                     # Write data as txt file to directory
            file = "data.txt",
            row.names = FALSE)
data1 <- scan("data.txt", what = "character")         # Apply scan function to txt file
data1   
data2 <- scan("data.txt", what = list("", "", ""))    # Read txt file into list
data2      
data3 <- scan("data.txt", skip = 1)                   # Skip first line of txt file
data3    
write.table(data,                                     # Write data as csv file to directory
            file = "data.csv",
            row.names = FALSE)
data4 <- scan("data.csv", what = "character")         # Apply scan function to csv file
data4    
data5 <- scan("")   # Scan RStudio console input

data5
