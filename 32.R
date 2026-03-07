# 1. Load data (using built-in dataset or create your own)
# Creating simulated data for demonstration
set.seed(123)
advertising_data <- data.frame(
  tv_budget = c(20, 40, 60, 80, 100, 120, 140, 160, 180, 200),
  sales = c(150, 180, 210, 245, 270, 305, 330, 365, 390, 420) + rnorm(10, 0, 15)
)

advertising_data

# 2. Visualize the relationship
plot(advertising_data$tv_budget, advertising_data$sales,
     main = "TV Budget vs Sales",
     xlab = "TV Advertising Budget ($1000s)",
     ylab = "Sales ($1000s)",
     pch = 19, col = "steelblue", cex = 1.2)

# 3. Fit the linear model
model_simple <- lm(sales ~ tv_budget, data = advertising_data)

# 4. Add regression line to plot
abline(model_simple, col = "red", lwd = 2)

# 5. View model summary
#summary(model_simple)

print(model_simple)