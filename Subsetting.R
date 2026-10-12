# subsetting

# indexing

x <- c("a", "b", "c", "c", "d", "e", "a")
x[1]
# [1] "a"
x[2]
# [1] "b"



# slicing
x[1:4]
# [1] "a" "b" "c" "c"

x[4:6]
# [1] "c" "d" "e"

x[x > "a"]
# [1] "b" "c" "c" "d" "e"

u <- x > 'a'
u
# [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE

x[u]
# [1] "b" "c" "c" "d" "e"
