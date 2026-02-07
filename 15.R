v <- 1:24
m <- matrix(v, nrow=2, ncol= 12)
m
m[1, 3]
m[2, 5]
m[2,]
m[, 2]


for(i in 1:nrow(m)){
  for(j in 1:ncol(m)){
    print(m[i,j])
  }
}



v = seq(from =1, to= 100, by = 2)
m = matrix(v, nrow=5)
m[2, 6]
