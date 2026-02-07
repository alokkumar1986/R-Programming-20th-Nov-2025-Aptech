v <- 1:12
v
v[2]
v[2:3]
v[c(1,7)]
v[-1]
v[-10]
v[-8]

v <- c("Apple", "Banana", "Orange", "Pineapple", "Guava")
length(v)
sort(v)


v1 <- rep(v, each=2)
v1

v2 <- rep(v, times=2)
v2

v3 <- rep(v, times= c(2, 3, 4, 5, 6))
v3

v4 <- seq(from=0, to= 100, by=5)
v4

v5 <- c(2, 4, 6, 8)
v6 <- v5+1
v6

v6 <- v5+1
v6

v6 <- v5*2
v6

v6 <- v5/2
v6

v10 <- c(1, 2, 3, 4)
v11 <- c(3, 5, 7, 9)

v10+v11 
v10-v11
v10*v11
v10/v11
v10%/%v11

l <- list(v10)
for(i in l){
  print(i)
}

if(5 %in% v10){
  print("Yes")
}else{
  print("No")
}


l <- list("A", 1, 1.5, TRUE, 2)

i = length(l)
while(i > 0){
  print(l[i])
  i<- i-1
 }
