mtcars


simple_regression = lm(mpg~wt, data= mtcars)
summary(simple_regression)

multiple_linnear_regresssion = lm(mpg~wt+hp, mtcars)
summary(multiple_linnear_regresssion)