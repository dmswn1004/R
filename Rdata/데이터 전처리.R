# 데이터 전처리
# 파일 입출력
rm(list=ls())

# 작업 경로 설정
setwd("C:/Rdata")

iris

# write.csv
write.csv(iris,"a.csv")

# read.csv
df <- read.csv("a.csv")
str(df)
df <- read.csv("a.csv",header = F)
str(df)
df <- read.csv("a.csv",header = T,
               stringsAsFactors = F)
str(df)

# subset : 데이터 추출
sub_df <- subset(df,subset = (Sepal.Length<5.5))
sub2_df <- subset(df,subset = (Sepal.Length<5.5 & Species=="setosa"))


# subset 활용 변수 제거
sub3_df <- subset(df,select =- Sepal.Length)

# 데이터 병합
# rbind 행으로 병합
r_df <- rbind(sub_df,sub2_df)
r_df

# cbind 열으로 병합
sub_df <- df[1,3]
sub2_df <- df[,4:6]
c_df <- cbind(sub_df,sub2_df)

# 변수명 변경
colnames(c_df)
colnames(c_df) <- c("a","b",3,4,5,6)
str(c_df)

# merge
x <- data.frame(name=c("a","b","c"), a = c(1,2,3))
x
y <- data.frame(name=c("b","c","a"), b = c(4,5,6))
y

z <- merge(x,y,by="name")
z

k <- data.frame(name=c("a","d"), c = c(3,5))
k

z_1 <- merge(z,k, all = T)
z_1
z_2 <- merge(z,k, all = F)
z_2
z
k


# 정렬
x <- c(20,11,33,50,47)
order(x)
sort(x)
x <- x[order(x)] #이거 외우기
x

order(df[,1])
df[order(df[,1]),]
arr_df <- df[order(df[,2]),]
arr_df <- df[order(df[,2],decreasing=T),]
arr_df


# 변수 선택 $
df$Sepal.Length

# head, tail
head(df)
tail(df)
