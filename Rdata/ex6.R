# R 조건문
# if문
a <- 3
b <- 4

if(a<b){
  cat("a가 b보다 작음")
}
if(b<a){
  cat("b가 a보다 작음")
}

if(TRUE){
  cat("항상 실행")
}
cat("항상 실행")
if(FALSE){
  cat("항상 실행하지 않음")
}

# else문
a <- 3
b <- 4
if(a<b){
  cat("a>b")
}else {
  cat("a<b or a==b")
}

# else if문
a <- 3
b <- 3
if(a>b){
  cat("a>b")
}else if(a<b){
  cat("a<b")
}else{
  cat("a==b")
}

if(5>6){
  cat("5>6")
}else if(5>5.5){
  cat("5>5.5") 
}else if(5>5.1){
  cat("5>5.1")
}else if(5==5){
  cat("5==5")
}

# 중접된 if문
a <- 5
b <- 3
c <- 6
if(a>b){
  if(a>c){
    cat("a,b,c 중에 a가 가장 크다")
  }
}
if((a>b)&(a>c)){
  cat("a,b,c 중에 a가 가장 크다")
}

if(a>b){
  if(a>c){
    cat("a,b,c 중에 a가 가장 크다")
  }else{
    cat("a,b,c 중에 a>b 나 a<=c")
  }
}

# if문과 else if의 차이점 
a <- 3
b <- 3
if(a==b){
  cat("a==b")
}else if(a%%b==0){
  cat("a%%b==0")
}

if(a==b){
  cat("a==b")
}
if(a%%b==0){
  cat("a%%b==0")
}


# 원소 벡터가 아닌 벡터화된 논리값이
# 조건에 들어갈 경우
a <- c(1,1,1)
b <- c(1,0,0)
a&b
#if(a&b){
#  cat("a&b")
#}

# 조건문 예제 실습1
apple <- 1
mango <- 0

if(apple>0 | mango>0){
  cat("과일 있음")
}else{
  cat("과일 없음")
}

# 조건문 실습 예제2
R <- 85
Python <- 95
if(R>90 & Python>90){
  cat("A+")
}else if(R>90 & Python>80){
  cat("R역량은 A+, Python 역량 A")
}else if(R>80 & Python>90){
  cat("R역량은 A, Python 역량 A+")
}else{
  cat("B")
}








