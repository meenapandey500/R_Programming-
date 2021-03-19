#web scraping
library("rvest")
b<-read_html("https://en.wikipedia.org/wiki/List_of_countries_by_population")
#t<-html_nodes(b,"a.Course")
cn=html_text(t)
cn
