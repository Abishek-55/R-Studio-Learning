# Subsetting lists

x <- list(foo = 1:4, bar = 0.6)
x[1]
# $foo
# [1] 1 2 3 4
x[[1]]
# [1] 1 2 3 4

x$bar
# [1] 0.6

x [['bar']]
# [1] 0.6


x['bar']
# $bar
# [1] 0.6

x <- list(foo = 1:4, bar = 0.6, baz = 'hello')
x[c(1,3)]

# $foo
# [1] 1 2 3 4

# $baz
# [1] "hello"

# The [[ can be used with computed indices; $ can only be used as literal names.

x <- list(foo = 1:4, bar= 0.6, baz = 'hello')
name <- 'foo'
x[[name]]   # computed index for 'foo'
# [1] 1 2 3 4

x$name   ## element 'name' doesn't exists
# NULL 

x$foo
# [1] 1 2 3 4  ## element foo doesn't exists



# [[ can take an integer sequence

x <- list(a = list(10, 12, 14), b = c(3.14,2.81))
x[[c(1,3)]]
# [1] 14

x[[1]][[3]]
# [1] 14

x[[c(2,1)]]
# [1] 3.14


# subsetting - Matrices

# Matrices can be subsetted in the usual way with (i,j) type indices

x <- matrix(1:6, 2, 3)
x[1,2]

# [1] 3

# Indices can also be missing

x[1, ]
# [1] 1 3 5

x[ ,2]
# [1] 3 4



# Partial Matching

# partial matching of names is alllowed with [[ and $

x <- list(aardvark = 1:5)
x$a
# [1] 1 2 3 4 5

x[['a']]
# NULL

x[["a", exact = FALSE]]
# [1] 1 2 3 4 5





