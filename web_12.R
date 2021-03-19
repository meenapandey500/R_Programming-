#install.packages("rvest")
#install.packages("xml2")

#call library
library(rvest)
library(xml2)
library(selectr)
library(stringr)
url='https://www.flipkart.com/samsung-galaxy-m01-blue-32-gb/p/itmc068b26305a0d?pid=MOBFRZZHMHQVNDFA&lid=LSTMOBFRZZHMHQVNDFAR2LOWM&fm=neo%2Fmerchandising&iid=M_2f5c7369-3bca-4eb3-b9fa-4b6034db20b2_8.82MHJW4KZ4IS&ssid=g6k7llgc1s0000001592294541261&otracker=hp_omu_Best%2BBattery%2BPhones_4_8.dealCard.OMU_Best%2BBattery%2BPhones_82MHJW4KZ4IS_4&otracker1=hp_omu_WHITELISTED_neo%2Fmerchandising_Best%2BBattery%2BPhones_NA_dealCard_cc_4_NA_view-all_4&cid=82MHJW4KZ4IS'
webpage<-read_html(url)
#call important field then html_nodes() and then call data in this field then
#use html_text()
#scrap title of mobile
title_mobile=html_nodes(webpage,'span._35KyD6')
title<-html_text(title_mobile)
title<-str_trim(title)
title<-str_replace_all(title,"[\r\n]","")
head(title)
#scarp price of mobile
price_mobile=html_nodes(webpage,'div._1vC4OE._3qQ9m1')
price<-html_text(price_mobile)
price<-str_trim(price)
price<-str_replace_all(price,"[\r\n]","")
head(price)
#Scarp rate of mobile
rate_mobile=html_nodes(webpage,'div.hGSR34')
rate<-html_text(rate_mobile)
rate<-str_replace_all(rate,"[\r\n]","")
head(rate)
#scrap Features of Mobile
features_mobile=html_nodes(webpage,'div._3WHvuP')
features=html_text(features_mobile)
features<-str_replace_all(features,"[\r\n]","")
head(features)
#combining all the lists to form a data frame 
mobile_data=data.frame(Title=title,Price=price,Rating=rate,Features=features)
#Structure of the data frame
str(mobile_data)
#Store Data In Json Format (unstructured format)
library(jsonlite)
json_data=toJSON(mobile_data)
cat(json_data)


