plot(10, 5)

plot(c(1,3), c(2, 4), type="l")


x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 2, 7, 3)


plot(x, y, type="l")

plot(1:10 , type="l", xlab="Overs", ylab="Score")


#===============================================

x <- c(1, 2, 3, 4, 5)
y <- c(3, 5, 2, 7, 3)

plot(x, y, type="l", cex=1, pch=25, col="blue",xlab="Overs", ylab="Score", main ="Cricket Score")

plot(x, y, 
     type = "l",    # Line graph
     lwd = 3,       # Thick line
     lty = 2,       # Dashed style
     col = "blue")

