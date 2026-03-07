my_vector <- 1:100

# 1. Sample 10 random numbers without replacement
#set.seed(10)

sample_1 <- sample(my_vector, size = 10, replace = TRUE)

print(sample_1)

#====================================================

df <- data.frame(
  ID = 1:100,
  Value = rnorm(100),
  Category = sample(c("A", "B", "C"), 100, replace = TRUE)
)

df
nrow(df)
sample_v2 = sample(nrow(df), 10, replace=FALSE)
sample_v2

#-=======================

set.seed(123)
sample_data <- rnorm(n = 50, mean = 10, sd = 2)
sample_data

confidence_level = t.test(sample_data)
confidence_level




