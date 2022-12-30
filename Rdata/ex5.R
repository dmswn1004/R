rm(list=ls())
#1,3,5,7,9 입력
a <- seq(1,9,2)
cat(a)

b <- c(1,3,5,7,9)
cat(b)

c <- seq(,9,2)
cat(c)

# 행렬
a <- matrix(1:6,2,3)
print(a)

data <- c(1,2,3,4,5,6)
mat <- matrix(data,2,3)
print(mat)

a <- matrix(1:6,2,3,byrow = TRUE)
a <- matrix(1:6,2,3, TRUE)
print(a)

a[1,]
a[,2]
c <- array(c(1:24),c(3,4,2))
c <- array(1:24,c(3,4,2))
print(c)

