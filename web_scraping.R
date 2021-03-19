install.packages('selectr')
install.packages('rvest')
  install.packages('xml2')
  install.packages('stringr')
#Reading the HTML content from Amazon
#Specifying the url for desired website to be scrapped
library(rvest)
  library(xml2)
  library(selectr)
  library(stringr)
  
url <- 'https://www.amazon.in/OnePlus-Mirror-Black-64GB-Memory/dp/B0756Z43QS?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=aee9a916-6acd-4409-92ca-3bdbeb549f80'
#Reading the html content from Amazon
webpage <- read_html(url)
#scrape title of the product
title_html <- html_nodes(webpage, 'h1#title')
title <- html_text(title_html)
  head(title)
  # remove all space and new lines
  str_replace_all(title, "[\r\n]" , "")                        
# Price of the product: 
  # scrape the price of the product>
price_html<-html_nodes(webpage,'span#priceblock_ourprice')
price<-html_text(price_html)   
# remove spaces and new line> 
str_replace_all(title, "[\r\n]" , "")       
# print price value
head(price)
#Product description:
# scrape product description> 
desc_html <- html_nodes(webpage, 'div#productDescription')
desc <- html_text(desc_html)
# replace new lines and spaces> 
desc <- str_replace_all(desc, "[\r\n\t]" , "") 
  desc <- str_trim(desc) 
  head(desc)
  #Rating of the product:
  # scrape product rating > 
  rate_html <- html_nodes(webpage, 'span#acrPopover')
  rate <- html_text(rate_html)
  # remove spaces and newlines and tabs > 
  rate <- str_replace_all(rate, "[\r\n]" ,"")
    rate <- str_trim(rate)  
  # print rating of the product>
  head(rate)
  #Size of the product:
  # Scrape size of the product> 
  size_html <- html_nodes(webpage, 'div#variation_size_name')
        size_html <- html_nodes(size_html, 'span.selection')
        size <- html_text(size_html)
        # remove tab from text> 
        size <- str_trim(size)
        # Print product size> 
        head(size)
  #Color of the product:
  # Scrape product color> 
        color_html <- html_nodes(webpage, 'div#variation_color_name')
      color_html <- html_nodes(color_html, 'span.selection')
      color <- html_text(color_html)
      # remove tabs from text> 
      color <- str_trim(color)
      # print product color> 
      head(color)
  
      #Step 4: 
      #Combining all the lists to form a dataframe
      product_data <- data.frame(Title = title, Price = price,Description = desc, Rating = rate, Size = size, Color = color)
      #Structure of the data frame
      str(product_data)
      #Step 5: Store data in JSON format:
      # Include 'jsonlite' library to convert in JSON form.> 
      library(jsonlite)
      
      # convert dataframe into JSON format> 
      json_data <- toJSON(product_data)
      # print output> 
      cat(json_data)
      
      
      