#Test if Drug A reduces blood pressure more than Drug B. Data from 20 patients per group.

drug_A <- rnorm(20, mean = 120, sd = 8)  # Lower BP = better
drug_B <- rnorm(20, mean = 128, sd = 10)

# 2. Check assumptions
cat("Normality check (Shapiro-Wilk):\n")
cat("Drug A:", shapiro.test(drug_A)$p.value, "\n")
cat("Drug B:", shapiro.test(drug_B)$p.value, "\n")

results = t.test(drug_A, drug_B, alternative = "two.sided")

print(results)