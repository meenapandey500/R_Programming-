#Visualisation : -
#scatter plot
#we create a vector (1D array)
X=1:10
print(X)
Y=X^2  #for power in r: ^ or **
print(Y)
#to create a scatter plot and check relation between independent variable X
#and dependent variable Y (output)
plot(X,Y) #plot() inbuilt function (create a scatter plot)
#by default scatter plot
#Line graph

plot(X,Y,type="l") #l means line graph

plot(X,Y,type="b") 
#b means line & point both show

plot(X,Y,type="o") 
#o means overploted points and lines

plot(X,Y,type="o",col="red")
#col means color bydefault black

#To define the Title of graph  use inbuilt
#parameter main
plot(X,Y,type="o",col="red",main="ITVedant Pvt. Ltd.")
#To define X-axis title and Y-axis title
plot(X,Y,type="o",col="red",main="ITVedant Pvt. Ltd.",
     xlab="X",ylab="Y^2")

plot(X,Y,cex=.5)
#cex inbuilt parameter , its increase or decrease
# the datapoint's size bydefault cex=1

#pch : inbuilt parameter , Ton provides various
#pattern of DataPoint
help(pch)
plot(X,Y,cex=.5,pch=25)

plot(X,Y,pch=1:10,cex=.5:1.5,col=1:10)



#To save a Graph as jpeg or png 
#If save .jpeg extension
jpeg(file="f://plot1.jpeg")
plot(X,Y,type="o",col="red",main="ITVedant Pvt. Ltd.",
     xlab="X",ylab="X^2")
dev.off()  #means plot save in permanent file  plot1.jpeg
#by default path

#Example 2 :find  Y=sin(X) and draw a graph
X=seq(-pi,pi,0.1) #pi=3.14
#start=-pi means -3.14 stop=+pi means +3.14 step=+0.1 
print(X)
Y=sin(X)
print(Y)
#to converts the value of X and Y in graph
png(file="f://plot2.png",width=600,height=350)
#. . . px means unit of graphics
#pixel means smallest unit of graphics
plot(X,Y,type="l",main="The Sine & Cosine Function",
     xlab="X",ylab="sin(X)",col="red")
Z=cos(X)
print(Z)
lines(X,Z,col="blue")
legend("topleft",c("sin(x)","cos(x)"),
       fill=c("red","blue"))
dev.off()

#Lecture 10-JAN-2021
#Bar plot : -

#create the data for bar plot
W<-c(7,12,28,3,41) # W : Weight 
M<-c("Mar","Apr","May","Jun","Jul") #M : Month
#plot the Bar graph
barplot(W,names.arg=M,col="red",border="blue",
        main="Weight Reduced Chart according to Month",xlab="Month",
        ylab="Weight")











