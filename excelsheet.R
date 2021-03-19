library(readxl)
excel_sheets('f://student.xlsx') #to display the name of  sheets
read_excel('f://student.xlsx',sheet='Sheet1')
df=read_excel('f://student.xlsx',sheet='Sheet2')
print(df)
nrow(df)
ncol(df)
colnames(df)

library(xlsx)
data=read.xlsx('f://student.xlsx',sheetIndex=1)
#to read first sheet
print(data)



