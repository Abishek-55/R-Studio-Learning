# Reading Data
# read.table, read.csv, for reading tabular data
# readLines, for reading lines of a text file
# source, for reading in R code files(inverse of dump)
# dget, for reading R code files(inverse of dput)
# load, for reading saved workspaces
# unserialize, for reading single R objects in binary form


# writing data
# write.table
# writeLines
# dump
# dput
# save
# serialize


# dput - ting R objects
# dput

y <- data.frame(a=1,b="a")
dput(y)
structure(list(a = 1, b = structure(1L, .Label = "a", class = "factor")), 
          names = c("a", "b"), row.names = c(NA, -1L), class = "data.frame")

dput(y,file="Y.R")
new.y <- dget("Y.R")
new.y

# Dumping R objects
x <- 'foo'
y <- data.frame(a=1, b='a')
dump(c('x','y'), file= 'data.R')
rm(x,y)
source('data.R')
y
#   a b
# 1 1 a
x
# [1] "foo"
