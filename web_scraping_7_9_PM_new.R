#install.packages("rvest")
#install.packages("xml2")
#install.packages("stringr")
#call library
library(rvest)
library(xml2)
library(stringr)
url='https://www.flipkart.com/samsung-galaxy-m01-blue-32-gb/p/itmc068b26305a0d?pid=MOBFRZZHMHQVNDFA&lid=LSTMOBFRZZHMHQVNDFAR2LOWM&fm=neo%2Fmerchandising&iid=M_2f5c7369-3bca-4eb3-b9fa-4b6034db20b2_8.82MHJW4KZ4IS&ssid=g6k7llgc1s0000001592294541261&otracker=hp_omu_Best%2BBattery%2BPhones_4_8.dealCard.OMU_Best%2BBattery%2BPhones_82MHJW4KZ4IS_4&otracker1=hp_omu_WHITELISTED_neo%2Fmerchandising_Best%2BBattery%2BPhones_NA_dealCard_cc_4_NA_view-all_4&cid=82MHJW4KZ4IS'
#url user defined uniform resource locator
webpage=read_html(url) #read html page from given link in url
#webpage user defined 
#call important field from webpage then use inbuilt function of R prog.
#html_nodes()
title_mobile=html_nodes(webpage,'span._35KyD6')
#call data from this field then use inbuilt function html_text()
title=html_text(title_mobile)
head(title)
#scrap price of mobile
price_mobile=html_nodes(webpage,'div._1vC4OE._3qQ9m1')
#call data from this field then use inbuilt function html_text()
price=html_text(price_mobile)
head(price)
#ascii char of Rs. ==> \u20b9
#scrap rating of mobile
rate_mobile=html_nodes(webpage,'div.hGSR34')
#call data from this field then use inbuilt function html_text()
rate=html_text(rate_mobile)
head(rate)
#scrap features of mobile
features_mobile=html_nodes(webpage,'div._3WHvuP')
#call data from this field then use inbuilt function html_text()
features=html_text(features_mobile)
head(features)
#Combining all the  fields to form a data frame
#because dataframe is atwo dimensional array means to hold data in tabular
#form
mobile_data=data.frame(Title=title,Price=price,Rating=rate,Features=features)
print(mobile_data)
#to show structure of dataframe mobile_data
str(mobile_data)
#To store this data from dataframe to csv file means structured format means table form
#syntax : write.csv(dataframename,'filename.csv')
write.csv(mobile_data,'mobile.csv')
d=read.csv('mobile.csv')
print(d)
#store data from dataframe to Json format (unstructured format)
#call library 
library(jsonlite)
#write data in json format
mobile_json=toJSON(mobile_data)
cat(mobile_json)

