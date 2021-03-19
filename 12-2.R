#create a list with required components
s <- list(name = "John", age = 21, GPA = 3.5)
# name the class appropriately
class(s) <- "student"
setClass("student", slots=list(name="character", age="numeric", GPA="numeric"))
setRefClass("student")
# a constructor function for the "student" class
student <- function(n,a,g) {
  # we can add our own integrity checks
  if(g>4 || g<0)  stop("GPA must be between 0 and 4")
  value <- list(name = n, age = a, GPA = g)
  # class can be set using class() or attr() function
  attr(value, "class") <- "student"
  value
}
s <- student("Paul", 26, 3.7)
s
