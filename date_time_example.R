# when do I turn 1 billion seconds old?
billbday <- function(bday, age = 10^9, format = "%Y-%m-%d %H:%M:%S") {
  x <- as.POSIXct(bday, format = format) + age
  togo <- round(difftime(x, Sys.time(), units = "days"))
  if (togo > 0) {
    msg <- sprintf("You will be %s seconds old on %s, which is %s days from now.", age,
                   format(x, "%Y-%m-%d"), togo)
  } else {
    msg <- sprintf("You turned %s seconds old on %s, which was %s days ago.", age, format(x,
                                                                                          "%Y-%m-%d"), -1 * togo)
  }
  
  if (age > 125 * 365.25 * 86400)
    msg <- paste(msg, "Good luck with that.")
  print(msg)
  format(x, "%Y-%m-%d")
}
billbday("1981-04-13 15:00:00")
