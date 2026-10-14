# Removing NA Values

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
bad
# [1] FALSE FALSE  TRUE FALSE  TRUE FALSE

x[!bad]
# [1] 1 2 4 5


x <- c(1, 2, NA, 4, NA, 5)
y <- c('a', 'b', NA, 'd', NA, 'e')

good <- complete.cases(x,y)
good

# [1]  TRUE  TRUE FALSE  TRUE FALSE  TRUE

x[good]
# [1] 1 2 4 5

y[good]
# [1] "a" "b" "d" "e"