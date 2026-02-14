x <- c('5', '10', '15', '20')
y <- c(60, 140, 201, 305)

color <- c("red", "green", "blue", 'pink')

barplot(height = y, names.arg = x, col = color, 
        xlab= "Overs", 
        ylab= "Runs", 
        main="Run Scoring Vs Overs", horiz = TRUE)

#===========================================================

marks <- c(55, 65, 78, 36, 87)
students <- c("ABC", "PQR", "XYZ", "MNO", "STU")

barplot(height = marks, names.arg= students, xlab="Students", ylab="Marks", main="Students / Marks")



