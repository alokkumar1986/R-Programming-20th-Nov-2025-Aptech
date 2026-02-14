mtcars
mtcars$mpg
factor(mtcars$carname)
factor(rownames(mtcars))


plot(factor(rownames(mtcars)), mtcars$mpg, col="red", type="l", xlab="Car Names", ylab="MPG",  main="Scatter plot of mtCars with MPG")


