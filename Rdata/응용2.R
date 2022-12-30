# R 조건문 반복 응용

#[기본 7]
#두 수의 공약수
a <- 12
b <- 6

for (i in 1:b){
  if(a%%i==0 & b%%i==0){
    print(i)
  }
}

for (i in 1:a){
  if(a%%i==0 & b%%i==0){
    print(i)
  }
}


#[기본 8]
#두 수의 최대공약수
a <- 12
b <- 6

for (i in b:1){
  if(a%%i==0 & b%%i==0){
    print(i)
    break
  }
}

for (i in a:1){
  if(a%%i==0 & b%%i==0){
    print(i)
    break
  }
}

a <- 12
b <- 6
c<-NULL
for (i in 1:b){
  if(a%%i==0 & b%%i==0){
    c <- i
  }
}
print(c)



#[기본 9]
#두 수의 최소공배수
a <- 12
b <- 6
for (i in a:(a*b)){
  if(i%%a==0 & i%%b==0){
    print(i)
    break
  }
}

#[기본 10]
#소수 출력
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


for(i in 2:100){
  for(j in 2:i){
    if(i==j){
      print(i)
    }
    if(i%%j==0){
      break
    }
  }
}

