# 데이터 전처리
# dplyr 패키지

install.packages("dplyr")
library(dplyr)
df <- iris
str(df)
head(df)

# filter : 행 선택
sub_df <- df %>% filter(Species=="setosa")
head(sub_df)
sub2_df <- df %>% filter(Species=="setosa" &
                           Sepal.Length > 5)
head(sub2_df)

# select : 열 선택
sub3_df <- df %>% select(c(Sepal.Length,Sepal.Width))
str(sub3_df)
str(df)
sub4_df <- df %>% select(-c(Sepal.Length,Sepal.Width))
str(sub4_df)


# filter와 select 조합
sub5_df <- df %>% filter(Species=="setosa") %>% 
                  select(c(Sepal.Length,Sepal.Width))
str(sub5_df)


# arrange : 정렬
sort_df <- df %>% arrange(Sepal.Length)
head(sort_df)
sort_df <- df %>% arrange(desc(Sepal.Length))
head(sort_df)

# summarise, group_by : 그룹별, 요약하기

df %>% summarise(Sep_len_mean = mean(Sepal.Length))
df %>% group_by(Species) %>%
       summarise(Sep_len_mean = mean(Sepal.Length))
df %>% group_by(Species) %>%
       summarise(Sep_len_mean = mean(Sepal.Length),
                 Sep_wid_mean = mean(Sepal.Width),
                 Pet_len_mean = mean(Petal.Length),
                 Pet_wid_mean = mean(Petal.Width))



# reshape 패키지
install.packages("reshape2")
library(reshape2)

airquality
head(airquality)
str(airquality)
df <- airquality



# melt : 기준을 바탕으로 재정렬
melt_df <- melt(df,id=c("Month","Day"))
head(melt_df)
melt2_df <- melt(df,id=c("Month"))
head(melt2_df)

# cast : 재형태화
case_df <- dcast(melt_df,Day~Month+variable)
case_df

# 결측 값
a <- NA
is.na(a)
is.na(1)
airquality
is.na(airquality)
df <- airquality
na.omit(df)
a <- df[complete.cases(df),]
a
omit_df <- na.omit(df)

# 시각화
cars
plot(cars$speed, cars$dist,
     main = "속도별 제동거리", xlab="속도",
     ylab="제동거리", col="red")

# 변수 간 산점도
plot(airquality)

# corrgram
install.packages("corrgram")
library(corrgram)
corrgram(airquality, upper.panel = panel.conf)

# corrplot
install.packages("corrplot")
library(corrplot)        
corrplot(cor(na.omit(airquality)),
         method = "shade")

# boxplot
boxplot(airquality)


# histogram
hist(airquality$Ozone)
