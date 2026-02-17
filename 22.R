v <- c(5, 7, 8, 5, 6, 7, 8, 9, 10, 6, 7, 8, 9, 10, 12)
hist(v, main="Grade of Students in Python", 
     xlab="Grades", 
     ylab="No. of Students",
     xlim=c(5, 12),
     ylim=c(0, 4),
     col="red",
     border = "blue",
     breaks=5
     )