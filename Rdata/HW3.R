rm(list=ls())

# 경로 설정
setwd("c:/Rdata")

# 과제3
# 데이터 가져오기
df <- read.csv("2020_KBO_Player_Data.csv",na="-")
df2 <- na.omit(df)
summary(df2)

# 상관관계 확인
plot(df2[,5:11])
library(corrplot)
cor <- cor(x = df2[,5:11])
corrplot(cor = cor,
         method = 'ellipse')
# corrplot.mixed(cor = cor)

# 출루율, 장타율
plot(df2$출루율,df2$장타율,  pch = 19, col = 'blue', 
     main = '출루율 vs 장타율',xlab="출루율",ylab="장타율")

# 모델 1
model1 = lm(득점 ~ 안타+홈런+경기, data = df2)
summary(model1)
options(scipen = 999)

# 잔차 그래프
par(mfrow=c(2,2))
plot(model1)

# 다중공선성 검정 : VIF
library(car)
vif(model1)

# 모델 2
model2 = lm(홈런 ~ 경기+타수+득점, data = df2)
summary(model2)
par(mfrow=c(2,2))
plot(model2)
vif(model2)
# 다중공선성 10이상임.....



