hours <- c(98, 95, 102, 99, 97, 101, 96, 94, 99, 98, 95, 97, 93, 96, 98)

results = t.test(hours, mu=100, alternative = "less")

results