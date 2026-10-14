# Removing NA Values

x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
bad
# [1] FALSE FALSE  TRUE FALSE  TRUE FALSE

x[!bad]
# [1] 1 2 4 5

