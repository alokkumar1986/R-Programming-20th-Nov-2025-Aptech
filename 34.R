# Assuming your data is in a data frame
training_data <- data.frame(X, y = y)

# Fit model
model <- lm(y ~ ., data = training_data)

# View model summary
summary(model)

# Predict on new data
# X_new should be a data frame with same column names as X
y_pred <- predict(model, newdata = X_new)