# create a date
as.Date("2012-08-30")

# use a different origin, for instance importing values from Excel
as.Date(41149, origin = "1900-01-01")
# specify the format
as.Date("08/30/2012", format = "%m/%d/%Y")
# take a difference
Sys.Date() - as.Date("1970-01-01")
# alternate method with specified units
difftime(Sys.Date(), as.Date("1970-01-01"), units = "days")
# see the internal integer representation
unclass(Sys.Date())
## [1] 15582
