

helloFun()

helloFun <- function(){
  print('Hello, there!')
}

#=====================================

helloFun <- function(){
  return ("Hello, there!")
}

x <- helloFun()
print(x)


#========================================
x <- 10
y <- 15
z <- 5

findGreater <- function(p, q, r){
  if (p>q & p>r){
    return (p)
  }else if (q>r){
    return (q)
  }else{
    return (r)
  }
}

print(findGreater(x, y, z))

print(findGreater(100, 50, 200))

print(findGreater(2000, 4000, 19999))

print(findGreater(x, 7999, 667667))

#=============================================

helloFun <- function(name){
  print(paste("Hello", name))
}

helloFun("Sachin")
#helloFun()
helloFun('Sachin', 'Sehwag')
#=============================================

find_small<- function(num1, num2, num3) {
  if (num1 <= num2 && num1 <= num3) {
    smallest <- num1
  } else if (num2 <= num1 && num2 <= num3) {
    smallest <- num2
  } else {
    smallest <- num3
  }
  return(smallest)
}
result <- find_small(10, 6, 8)
print(paste("The smallest number is = ", result))


#====================================================

swapVal <- function(p, q){
  print(paste("p=", p))
  print(paste("q=", q))
  p = p+q-(q=p)
  print(paste("p=", p))
  print(paste("q=", q))
}
x <- 10
y <- 5 

swapVal(x, y)





