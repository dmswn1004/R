# R 반복문
# for 문 
# 예제 1)
for (i in 1:10){
  print(i)
}

# while 문
# 예제 2)
i <- 1
while(i <= 10){
  print(i)
  i <- i + 1
}

# repeat 문
#repeat{
#  print(1)
#}

i <- 1
repeat{
  print(i)
  i <- i + 1
  if(i%%3==0){
    break
  }
}

#while(T){
#  print(1)
#}

i <- 1
while(T){
  print(i)
  i <- i + 1
  if(i%%3==0){
    break
  }
}

# 반복문 제어
# break
for (i in 1:10){
  print(i)
  if(i%%3==0){
    break
  }
}

# next
i <- 1
while(i <= 10){
  i <- i + 1
  if(i%%3==0){
    next
  }
  print(i)
}


# for문과 while문의 변환
# for 예제 1 -> while
for (i in 1:10){
  print(i)
}


i <- 1
while(i <= 10){
  print(i)
  i <- i + 1
}


# while 예제 2 -> for
i <- 1
while(i <= 10){
  print(i)
  i <- i + 1
}

for (i in 1:10){
  print(i)
}


# 중첩된 반복문
for(i in 1:10){
  for(j in 1:10){
    cat(i," ",j,"\n")
  }
  cat("\n")
}

for(i in 1:10){
  for(j in 1:10){
    for(k in 1:10){
      cat(i," ",j," ",k,"\n")
    }
  }
}
