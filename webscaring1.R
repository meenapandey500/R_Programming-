#web scraping
library("rvest")
b<-read_html("https://www.bisptrainings.com/Training-Schedule")
t<-html_nodes(b,"a.Course")
cn=html_text(t)
cn
