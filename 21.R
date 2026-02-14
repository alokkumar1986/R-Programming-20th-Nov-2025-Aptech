mtcars


barplot(height= mtcars$mpg, names.arg = rownames(mtcars))


pie(c(20, 30, 40, 50), 
    label=c("Apple", "Banana", "Grape", "Orange"),
    col =c("red", "yellow", "black", "orange"),
    init.angle = 45, main="Fruits Availablility")

legend("bottomright", 
       legend=c("Apple", "Banana", "Grape", "Orange"), 
       fill=c("red", "yellow", "black", "orange"))













