rm(list=ls())
setwd("C:/Rdata")
getwd()

df <- read.csv("example_kbo2015_player.csv",na= "-")
str(df)
df <- na.omit(df)
summary(df)

# 회구 분석
# HR : 홈런 / AVG : 타율 / G : 출전한 경기
# AB : 타수 / X2B : 2루타 / X3B : 3루타
# SF : 희생플레이 / GP : 땅볼아웃 / BB.K : 볼넷 대비 삼진

model <- lm(HR ~ AVG+G+AB+X2B+X3B+SF+GO+BB.K, data=df)
summary(model)
options(scipen = 999)

# 잔차 그래프
plot(model)
par(mfrow=c(2,2))
plot(model)

# 다중공선성 검정 : VIF
install.packages("car")
library(car)
vif(model)
# 10넘는 변수 삭제 후 다시 분석

model <- lm(HR ~ AVG+G+X2B+X3B+SF+GO+BB.K, data=df)
vif(model)
summary(model)

# 변수 선택법
null <- lm(HR ~ 1,data=df)
full <- lm(HR ~ AVG+G+X2B+X3B+SF+GO+BB.K,data = df)

# 전진 선택법
forward <- step(null, direction = "forward",
                scope=list(lower=null, upper=full))
summary(forward)
par(mfrow=c(2,2))
plot(forward)

# 후진 제거법
backward <- step(full, direction = "backward",
                 scope = list(lower=null, upper=full))
summary(backward)

# 단계별 방법
both <- step(null, direction = "both",
              scope = list(lower=null, upper=full))
summary(both)
AIC(both)
BIC(both)

# 예측
pred <- predict(both, newdata = df)
pred <- round(pred)
pred <- as.data.frame(pred)
pred
tmp <- cbind(df$HR,pred)
tmp
colnames(tmp) <- c("real","pred")

# 잔차 가정 검정
# 선형성 검정
crPlots(both)
# 잔차의 등분산 검정(p값 0.05 이하 정규성 X)
ncvTest(both)

# 잔차의 정규성 검정(p값 0.05 이하일 경우 정규성 만족 X)
residual <- tmp$real - tmp$pred
residual
shapiro.test(residual)

# 잔차의 독립성 검정 (p 0.05 이하)
durbinWatsonTest(both)

