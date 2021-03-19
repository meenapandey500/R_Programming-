#example of vector 
#stock of company
google<-c(450,451,452,453,468)
msft<-c(230,231,232,233,220)
#define naming 
stocks<-c(google,msft) #combined vector
stocks
#converts in matrix 
stocks.matrix<-matrix(stocks,byrow=TRUE,nrow=2)
days<-c('M','T','W','TH','F')
st.names<-c('Google','Microsoft')
colnames(stocks.matrix)<-days
rownames(stocks.matrix)<-st.names
print(stocks.matrix)

