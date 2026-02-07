for(i in 1:10){
  print(i)
}


i <- 1
while(i<=10){
  print(i)
  i=i+1
}


x <- 'I am Sachin. I played for India. I retired in the year 2018.'

y <- c(strsplit(x, split=" "))

#print(y)

#len <- lengths(y)
#print(len)


len <- 0
for(i in y)
{
  print(i)
  len = len+1
}

print(len)


#===========================================

for( i in 1: 100){
  print(i)
  if(i==33){
    break
  }
}


for( i in 1: 100){
  
  if(i==33){
    next
  }
  print(i)
}

