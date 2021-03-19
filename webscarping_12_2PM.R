#install.packages("rvest")
library(rvest)
#install.packages("xml2")
library(xml2)
library(selectr)
library(stringr)
url <- 'https://www.amazon.in/OnePlus-Mirror-Black-64GB-Memory/dp/B0756Z43QS?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=aee9a916-6acd-4409-92ca-3bdbeb549f80'
webpage<-read_html(url)
webpage
#Scrap title of the product
title_html<-html_nodes(webpage,'h1#title')
title<-html_text(title_html)
#To remove all the spaces and newlines
#str_replace_all() inbuilt function of library stringr 
title<-str_replace_all(title,"[\r\n]","")
head(title)
#Scarp Product description
prod_desc<-html_nodes(webpage,'div#productDescription')
description<-html_text(prod_desc)
#To remove all the spaces and newlines
#str_replace_all() inbuilt function of library stringr 
description<-str_replace_all(description,"[\r\n]","")
head(description)
#scrap Size  
prod_size<-html_nodes(webpage,'div#variation_size_name')
size<-html_text(prod_size)
#To remove all the spaces and newlines
#str_replace_all() inbuilt function of library stringr 
size<-str_replace_all(size,"[\r\n]","")
head(size)
#scarp color name
prod_color<-html_nodes(webpage,'div#variation_color_name')
color<-html_text(prod_color)
#To remove all the spaces and newlines
#str_replace_all() inbuilt function of library stringr 
color<-str_replace_all(color,"[\r\n]","")
head(color)

