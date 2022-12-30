# R 연산자
# 산술 연산자
3+5
3-5
3*6
3/6
3^3
9%%2 # 나머지
9%/%2 # 나머지 버림 정수형 나누기

# 비교 연산자
3>5
a <- 3>5
class(a)
typeof(a)
3>=5
#3=>5
3>=3
3<5
3<=5
#3=<5
3==3
3!=2
3!=3
#3=!3

# 논리 연산자
# 논리곱(AND)
TRUE && FALSE
TRUE & FALSE
TRUE & TRUE
TRUE && TRUE

a <- c(T,T,T)
b <- c(T,F,F)
a & b
a && b

a <- c(1,1,1)
b <- c(1,0,0)
a & b
a && b

T & T
T & F
F & T
F & F

#a <- as.logical(a)

# 논리합(OR)
a <- c(T,F,T)
b <- c(T,F,F)
a | b
a || b

T | T
T | F
F | T
F | F

# 논라 부정
!(TRUE)
!(FALSE)
a <- c(T,F,T)
b <- c(T,F,F)
a | b
!(a|b)
a || b
!(a||b)

# 응용
T & T | F
!(T & T | F)
!((3>5) & T)
