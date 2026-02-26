# x = number of successes, n = total trials, p = hypothesized proportion
test_result <- prop.test(x = 50, n = 200, p = 0.30)

print(test_result)