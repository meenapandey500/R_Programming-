library(rvest)
#url="http://www.imdb.com/title/tt1431045"
url="http://www.imdb.com/title/tt2488496"
movie<-read_html(url)
movie %>% html_nodes(".summary_text")%>% 
  html_text()
movie %>% html_nodes("table")%>% 
  #.[[2]] %>%
 
  html_table()
