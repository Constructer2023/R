a <- 5
sqrt(a)
b <- c(1.243, 5.654, 2.99)
# round(x, digits = n), by default n is 0, and it can also be negative
round(b)
# runif(n, min = a, max = b), generate n numbers that follow the uniform 
# distribution range a to b, by default, a = 0, b = 1
c <- matrix(runif(12), nrow = 3)
c
# These mathematical functions will take all inputs as scalars and treat or apply 
# algorithm on them one by one
log(c)
mean(c)
