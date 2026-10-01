# Data Frames

# - They are represented as a special type of list where every element of list has to have same length
# - Each element of the list can be thought as a column and length of each element of the list is number of rowa.
# - Unlike matrics, dataframes can store different class of objects
# - dataframes also have special attribute called row.names
# - dataframes are usually created by calling read.tables() or read.csv() or data.frame()
# - can convert into matrix by calling data.maatrix


x <- data.frame(foo = 1:4, bar= c(T,T,F,F))
x

#     foo   bar
# 1   1  TRUE
# 2   2  TRUE
# 3   3 FALSE
# 4   4 FALSE

nrow(x)
# [1] 4

ncol(x)
# [1] 2
