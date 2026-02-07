l <- list("A", 1, 1.5, TRUE)
l

l1 <- list(1:10)
l1

l[-1]
l[1:3] 

l[c(1,3)]

10 %in% l 


l1 <- append(l, 5)
l1


l1 <- append(l, 5, after=2)
l1


l <- list("A", 1, 1.5, TRUE, 2)

l1 <- l[-1]
l1


l1 <- l[-2]
l1

l <- list(1, 2, 3)
l1 <- list(4, 5, 6)
l2 <- list(l, l1)
l2

l <- list("A", 1, 1.5, TRUE, 2)

for(I in l){
  print(I)
}

l <- list("A", 1, 1.5, TRUE, 2)
i = length(l)
while(i > 0){
  print(l[i])
  i<- i-1
}
print(rev(l))

l = c(1, 4, 2, 5, 3)
print(sort(l, decreasing = TRUE))
