installed.packages("tidyverse")

library("tidyverse")

ggplot(data=mtcars,
       aes(x=mpg, 
           
           color=factor(cyl)
           ))+ geom_boxplot()+
  labs(title="MTCARS wt vs mpg", x= "MPG", y= "WT")



mtcars
