#Interactive plotting with plotly
#install.packages("plotly")
#calll library plotly
library(plotly)
#Line plot  with the help of plotly package
#plot_ly() inbuilt function which define plotly package
#define 2 variables 1. independent variable x and 2. dependent
#variable y(target means output variable) . where y depend on x
plot_ly(
  x=c(1,2,3),
  y=c(4,5,6),
  type="scatter",
  mode="lines"
)

#scatter plot
plot_ly(
  x=c(1,2,3),
  y=c(4,5,6),
  type="scatter",
  mode="markers"
)
#bar graph

plot_ly(
  x=c(1,2,3),
  y=c(4,5,6),
  type="bar",
  
)

#bubble chart
plot_ly(
  x=c(1,2,3),
  y=c(4,5,6),
  type="scatter",
  mode="markers",
  size=c(2,6,9),
  marker=list(color=c("red","green","yellow"))
)

#area plot
plot_ly(
  x=c(1,2,3),
  y=c(4,5,6),
  type="scatter",
  mode="lines",
  fill="tozeroy"
)

