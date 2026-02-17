a <- 10
b <- 0
tryCatch({
  c <- a/b
},
error=function(e){
  stop('Error')
},
warning=function(w){
  warning("Warning")
},
finally = {
  print(c)
  message("Program Ended")
}
)
