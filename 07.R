x <- 10L
y <- 10.0

if (x==y){
  print('X is equal to Y')
}

x <- 10
y <- 13

if (x>y){
  print('x is greater than y')
}else{
  print('x is smaller than y')
}

#=========================================

x <- 10
y <- 12
z <- 5

if (x>y & x>z){
  print('X is greater')
}else if (y>z){
  print('Y is greater')
}else{
  print('Z is greater')
}

#======================================

x <- c(1, 2, 3)
y <- c(4, 5, 6)

if (5 %in% y){
  if (5 %in% x){
    print('5 is in x and y')
  }else{
    print('5 is in y only')
  }
}else{
  print('5 is neither in x nor in y')
}


