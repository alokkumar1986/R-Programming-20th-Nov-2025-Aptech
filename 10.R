helloFun <- function(name = "Shyam"){
  print(paste("Hello", name))
}

helloFun("Sachin")

helloFun() #error

#==========================================

helloFun <- function(name, name1 = 'Shyam'){
  print(paste("Hello", name, name1))
}

helloFun("Sachin", "Sehwag")

helloFun("Sachin")


#===========================================

helloFun <- function(name="Shyam", name1){
  print(paste("Hello", name, name1))
}

helloFun("Sachin", "Sehwag")

helloFun("Sachin")

#===========================================

my_fun <- function(p, q){
  return (p+q)
}

my_fun(my_fun(my_fun(1,2),3),4)

#============================================


outer_fun <- function(x){
  
  inner_fun <- function(y){
    return (x+y)
  }
  return (inner_fun)
}

outer <- outer_fun(2)
inner <- outer(3)

print(inner)

#=======================================================

my_fun <- function(x){
  if (x >0){
    print(x)
    my_fun(x-1)
  }
}

my_fun(100)


