rm(list=ls())

# 과제2
# [2-1] 
while(TRUE){ 
  for (i in 1:5){
    for (j in 1:i){
      cat("*")
   }
    cat("\n")
  }
  for (i in 4:1){
    for (j in 1:i){
      cat("*")
    }
    cat("\n")
  }
  break
}

# 풀이
for (k in 1:1){ 
  for (i in 1:5){
    for (j in 1:i){
      cat("*")
    }
    cat("\n")
  }
  for (i in 4:1){
    for (j in 1:i){
      cat("*")
    }
    cat("\n")
  }
}
#두번째 반복문에 객체를 1에서 i까지만 반복하게 함으로써 
# * 개수를 점차 늘려서 출력하게했다. 그리고 다음 반복문에서는 i를
# 4에서 1로 하면서 개수를 점점 줄였다.


# 참고 - 별모양
for(i in 1:5){
  for(j in 1:i){
    cat("*")
  }
  if(i!=5){
    for(k in (5-i):1){
      cat("-")
    }
  }
  cat("\n")
}



# [2-2] 최대공약수 리턴하는 함수
GCD <- function(a,b){
  for(i in b:1){
    if(a%%i==0 & b%%i==0){
      return(i)
    }
  }
}
GCD(12,6)
# 입력받은 인자를 i로 나누어서 두 수의 공통 약수를 찾아서 리턴한다.

# [2-3] 최소공배수 출력하는 함수
LCM <- function(a,b){
  for(i in a:(a*b)){
    if(i%%a==0 & i%%b==0){
      print(i)
      break
    }
  }
}
LCM(12,6)
# i를 입력받은 인자로 나누어서 공통되는 배수를 찾아서 
# 출력하고 출력 후 종료를 한다.

# [2-4] 소수 출력
for(i in 2:100){
  count <- 0
  for(j in 1:i){
    if(i%%j==0){
      count <- count + 1
    }
  }
  if(count==2)
    print(i)
}
# i를 1부터 i까지 나누어서 나누어진 횟수가 2개인 것을 출력한다.
# 소수는 자기자신과 1외에 수에서는 나누어 지지 않는 특성을 이용했다.

# [2-5]
# (1-1)
x <- matrix(1:12,4,3)
x
# (1-2)
r1 <- x[1,]
r1
# (1-3)
c1 <- x[,1]
c1
# (2)
data <- c(2,5,8,10)
y <- matrix(data,2,2)
y
# (3)
z <- matrix(seq(1,11,2),2,3)
z

# [2-6] 공배수 판별
CM <- function(a,b,c){
  for(i in a:(a*b)){
    if(i%%a==0 & i%%b==0){
      if(c==i){
        print("공배수가 맞음")
        break
      }else{
        print("공배수가 아님")
        break
      }
    }
  }
}
CM(12,6,12)
# a와 b의 공통되는 배수가 i일때 i와 c가 같으면 
# 공배수가 맞다고 출력 하도록 하고 종료한다. 