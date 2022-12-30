rm(list=ls())
#객체
#행렬(Matrix)

#행렬 생성
matrix(1:12,3,4)
matrix(seq(12),3,4)
matrix(1:12,3,4, byrow=T)
matrix(1:12,3,4, byrow=T,
       dimnames = list(c("a","b","c"),
                       c("d","e","f","g")))
#행렬 인덱싱
a <- matrix(1:12,3,4)
a
a[3,2]
a[2,]
a[2:3,]
a[,2]
a[,2:4]


#배열(array)
#배열 생성
array(1:24,c(3,4,2))
#array(값 벡터,c(행,열,층))
a <- array(1:24,c(3,4,2))
class(a)
a <- array(1:12,c(3,4))
str(a)
a
class(a)

#배열 인덱싱
a <- array(1:24,c(3,4,2))
a
str(a)
a[2,3,1]
a[2,3,2]
a[,,1]
a
a[1:2,,1]

#리스트
#리스트 생성
L <- list(c(1,2,3),
          matrix(1:6,3,2),
          array(1:24,c(3,4,2)))
L
class(L)

#리스트 인덱싱
L[[1]]
L[[2]]
L[[3]]

a <- list(name="R", hobby="data")
a$name
a$hobby

#데이터 프레임 (Data frame)
#데이터 프레임 생성
name <- c("R","Python","Java")
class(name)
ID <- c(1,2,3)
class(ID)
df <- data.frame(name,ID)
class(df)
str(df)
df <- data.frame(name,ID,
                 stringsAsFactors = FALSE)
str(df)
df
#데이터 프레임 인덱싱
df
df[2,1]
df[1,]
df[,1]

#객체 변환
a <- matrix(1:10,2,5)
a
class(a)
a <- as.data.frame(a)
class(a)
a <- as.matrix(a)
class(a)
a <- as.list(a)
class(a)
a <- as.array(a)
class(a)
