
library(rvest)
library(xml2)
library(stringr)  
url='https://www.amazon.in/OnePlus-Mirror-Black-64GB-Memory/dp/B0756Z43QS?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=aee9a916-6acd-4409-92ca-3bdbeb549f80'
webpage<-read_html(url)
#scrape title of the product
title<-html_nodes(webpage,'h1#title')
title1<-html_text(title)
head(title1)
# remove all space and new lines
str_replace_all(title1, "[\r\n]" , "")  
