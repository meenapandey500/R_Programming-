library(rvest)
library(xml2)
library(stringr)
library(selectr)
lego_movie <- html("http://www.imdb.com/title/tt1490017/")
lego_movie %>%
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

year_html<-html_nodes(lego_movie,'span#titleYear')
year<-html_text(year_html)
# remove spaces and newlines and tabs > 
year <- str_replace_all(year, "[\r\n]" ,"")
year <- str_trim(year)  
head(year)

summary_html<-html_nodes(lego_movie,'div.summary_text')
summary<-html_text(summary_html)
# remove spaces and newlines and tabs > 
summary <- str_replace_all(summary, "[\r\n]" ,"")
summary <- str_trim(summary)  
head(summary)

table_html<-html_nodes(lego_movie,'table.cast_list')
table<-html_table(table_html)
# remove spaces and newlines and tabs > 
table <- str_replace_all(table, "[\r\n]" ,"")
table <- str_trim(table)  
head(table)
#lego_movie %>% html_nodes("table")%>% 
  #.[[2]] %>%
#table_html<-html_nodes(lego_movie,'table.cast_list')
  #table=html_table(table_html)
  
  
  #head(table)
lego_movie %>%
  html_nodes("table") %>%
  .[[3]] %>%
  html_table()



