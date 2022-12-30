# 함수
# 함수 정의
triple <- function(x){
  y <- x*3
  return(y)
}

# 함수 사용
triple(5)

# 리턴이 있는 함수
a <- triple(5)
a
class(a)

# 함수 응용
# [함수 1]
# 최대공약수 리턴
GCD <- function(a,b){
  for(i in b:1){
    if(a%%i==0 & b%%i==0){
      return(i)
#      break
    }
  }
}
GCD(12,6)
GCD(20,12)
a <- GCD(12,6)
a

# [함수 2]
# 최대공약수 출력
GCD <- function(a,b){
  for(i in b:1){
    if(a%%i==0 & b%%i==0){
      print(i)
      break
    }
  }
}

GCD(12,6)
a <- GCD(12,6)
a
class(a)

# [함수 3]
# 최소공배수 리턴
LCM <- function(a,b){
  for(i in a:(a*b)){
    if(i%%a==0 & i%%b==0){
      return(i)
      #break
    }
  }
}
LCM(12,6)

# [함수 4]
# 최소공배수 출력
LCM <- function(a,b){
  for(i in a:(a*b)){
    if(i%%a==0 & i%%b==0){
      print(i)
      break
    }
  }
}
LCM(12,6)
a <- LCM(12,6)
a

# [함수 5]
# 소수 출력
PRIME <- function(a){
  for(i in 2:a){
    count <- 0
    for(j in 1:i){
      if(i%%j==0){
        count <- count + 1
      }
    }
    if(count==2){
      print(i)
    }
  }
}
PRIME(100)

# [함수 6]
NI_NR <- function(){
  print("입력인자와 리턴이 없는 함수")
}
NI_NR()

# [함수 7]
NI_R <- function(){
  return(3.14159)
}
NI_R()
a <- NI_R()
a



