library(dplyr)
library("datasets")


library(tidyverse)

diamonds
diamonds_1 <- filter(diamonds, color == "I")
diamonds_2 <- group_by(diamonds_1, cut)
(diamonds_3 <- summarize(diamonds_2, price = mean(price)))


diamonds_1 <- filter(diamonds, color == "I")
diamonds_2 <- group_by(diamonds_1, cut)
(diamonds_3 <- summarize(diamonds_1, price = mean(price)))

diamonds_t <- diamonds

diamonds_t <- filter(diamonds_t, color == "I")
diamonds_t <- group_by(diamonds_t, cut)
(diamonds_t <- summarize(diamonds_t, price = mean(price)))

#Function composition
summarize(
  group_by(
    filter(diamonds, color == "I"),
    cut
  ),
  price = mean(price)
)
summarize(group_by(filter(diamonds, color == "I"), cut), price = mean(price))


#Back to the pipe
diamonds %>%
  filter(color == "I") %>%
  group_by(cut) %>%
  summarize(price = mean(price))

set.seed(1) # reproducability

# Utility function for sampling.
sample_with_replace <-
  function(v, n = 100) sample(v, size = n, replace = TRUE)

# Generate some auction data for the example.
auction.data <-
  data.frame(
    Price    = 1:100 %>% sample_with_replace,
    Quantity = 1:10  %>% sample_with_replace,
    Type     =
      0:1 %>%
      sample_with_replace %>%
      factor(labels = c("Buy", "Sell"))
  ) %T>%
  (lambda(x ~ x %>% head %>% print))
