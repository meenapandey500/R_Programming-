library(dplyr)
df<-read.csv("f://company_sales_data.csv")
head(df)
df%>%
  mutate(x=facewash-shampoo)

