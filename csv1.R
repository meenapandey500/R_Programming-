#Read numeric values from standard input.
num <- scan()
num
#Read text values from standard input.
txt <- scan(what="")
txt
#We could read this matrix into R as follows:
mymat = matrix(scan('mat.dat'),ncol=4,byrow=TRUE)
mymat

#Connections
thedata = textConnection('7 19 12 15
 8 9 17 4
 52 12 9 7
 12 9 40 13
 ')
mymat = matrix(scan(thedata),ncol=4,byrow=TRUE)
mymat
# read from specified text argument
scan(text=c("1 2\n3 4", "5 6"))

# Read a label and two numeric fields to make a matrix.
tfile <- tempfile()
cat("row1 9 10", "row2 2 3", sep="\n", file=tfile)
z <- scan(tfile, list(name="", 0, 0))
mat <- cbind(z[[2]], z[[3]])
dimnames(mat) <- list(z$name, c("X","Y"))
mat


# Read a CSV file, skip the first line of the file
# and save in single precision:
cat(file=tfile, sep="\n",
    "This line is skipped",
    "1,1,2,3,5,8",
    "13,21,34,55",
    "89,144,233,377")
scan(tfile, single(0), skip=1)
