#Verify and Load the "xlsx" Package
# Verify the package is installed.
any(grepl("xlsx",installed.packages()))

# Load the library into R workspace.
library(xlsx)
# Read the first worksheet in the file input.xlsx.
data <- read.xlsx("f://input.xlsx", sheetIndex = 1)
d<-read.xlsx("f://input.xlsx", sheetIndex=2)
print(data)
