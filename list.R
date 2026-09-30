# creating list
# List is a special type of vector that can contain elements of different classes
## syntax: list(value,value...)
x <- list(1.5, "a", TRUE)
x


# Matrices
# Matrices are vectors with a dimension attribute

## creating matrices

## Note: matrices are constructed column-wise, so entries start from upper left 
## and then runniing down into columns

m <- matrix(1:6, nrow = 2, ncol = 3)
m

## matrix can also be created using dimension attribute i.e. dim(val)
m <- 1:10
m

dim(m) <- c(2,5)
m

## can also be created by row binding and column binding i.e rbind(), cbind()

x <- 1:3
y <- 10:12

cbind(x,y)

x <- 1:3
y <- 10:12

rbind(x,y)


# factors
# - used to represent categorical data, can be ordered or unordered

# factors are treated specially by modelling functions like lm() and glm()

x <- factor(c('yes', 'yes', 'no', 'yes', 'no'))
x


table(x) # it will show frequency

unclass(x) ## to stripes out the class for vector and it changes to integer

# the order of levels can be set using levels argument to factor(). 
# this would be used if you want baseline model according to your wish.
# If you don't do this program will consider baseline model to the value which
# comes first in alphaetical order

x <- factor(c('yes', 'yes', 'no', 'yes', 'no'),
            levels = c('yes', 'no'))
x





