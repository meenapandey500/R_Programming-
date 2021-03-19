


'''INTRODUCTION

Plotly's R graphing library makes interactive, publication-quality web graphs. More specifically it gives us the ability to make line plots, scatter plots, area charts, bar charts, error bars, box plots, histograms, heatmaps, subplots, multiple-axes, and 3D charts.

In this tutorial we are going to make a first step in plotly's world by learning to create some basic charts enhanced with proper layouts that the plotly package provides.

For other parts of this series follow the tag plotly visualizations

PACKAGE INSTALLATION & DATA'''

#The first thing you have to do is install and load the plotly package with:
 # install.packages("plotly")
library(plotly)
Moreover we need some data to work with. We will create x, y and y3 with numeric values in order to use them later in our examples.
x =c(1,2,3,4,5 )
y =c(6,7,8,9,10)
y3=c(-6,-7,-8,-9,-10)
plot_ly (
  x =c(1,2,3),
  y =c(4,5,6),
  type = "scatter" ,
  mode = "lines"
)


plot_ly (
  x =c(1,2,3),
  y =c(4,5,6),
  type = "scatter" ,
  mode = "markers"
)

plot_ly (
  x =c(1,2,3),
  y =c(4,5,6),
  type = "bar"
)

plot_ly (x =c(1, 2, 3 ),
         y =c(4,5, 6 ),
         type = "scatter" ,
         mode = "markers" ,
         size =c( 2,6,9 ),
         marker = list(color =c( "red","black","yellow" )))

plot_ly( z=volcano,
         type = "heatmap")


plot_ly (
  x =c(1,2,3),
  y =c(4,5,6),
  type = "scatter" ,
  mode = "lines",
  fill = "tozeroy"
)

plot_ly (
  x =c(1,2,3 ),
  y =c(4,5,6),
  y3 =c(-4,-5,-6),
  type = "scatter",
  mode = "markers"
) %>%
  add_trace(x=x,y=y3 )