v <- 1:24

arr <- array(v, dim=c(2, 3, 4))

print(arr)

arr[2,3,3]
arr[1,1,1]


arr[c(1),2,4]

arr[c(1), , 4]

arr[ ,c(1), 4]


dim(arr)

length(arr)

for(i in arr){
  print(i)
}



if(200 %in% arr){
  print('Yes')
}else{
  print('No')
}


