# 1. Create Data
class_A <- c(88, 92, 90, 85, 89, 94, 87)
class_B <- c(80, 82, 85, 79, 83, 81, 84)

# 2. Run Test
# H0: mean_A = mean_B, H1: mean_A > mean_B (Right-tailed)
# var.equal = FALSE uses Welch's t-test (default, safer)
test_result <- t.test(class_A, class_B, alternative = "greater", var.equal = FALSE)

# 3. Output
print(test_result)