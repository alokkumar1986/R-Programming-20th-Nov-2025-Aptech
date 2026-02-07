v <- c(1, 2, 3)
v

v1 <- 1:12
v1

v2 <- seq(from=0, to=100, by=20)
v2

v2[1] 

v2[1:3]

v2[c(1,5)]

v2[-2]


v <- rep(c(1, 2, 3), each=3)
v  

v1 <- rep(c(1, 2, 3), times=3)
v1

v2 <- rep(c(1, 2, 3), times=c(2, 3, 5))
v2


v <- seq(from=100, to=0, by =-5)
v

v1 <- v+2
v1

v2 <- v-2
v2


v3 = v1+v
v3


# Take a vector and print all the values except index 1

v <- 1:10
v[-1]

v[-2]

v[1:3]

v[c(1, 3, 4)]

v1 <- c("A", "B", "C", "D", "E", "F")

v1[c(1, 5)]

l <- list(v1)
l


v1 <- c("E", "A",  "C", "B", "D",  "F")

sort(v1)

v1 <- c("E", "A",  "C", "B", "D",  "F")
v1[1] = "Z"
v1


