bottles <- rnorm(20, mean = 495, sd = 5)

#bottles

results = t.test(bottles, mu= 500)

print(results)