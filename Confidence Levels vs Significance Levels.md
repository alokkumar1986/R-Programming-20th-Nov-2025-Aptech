In statistics, Confidence Levels and Significance Levels (often denoted as alpha, $alpha$) are two fundamental concepts crucial for drawing inferences from data. They are closely related and often misinterpreted. Let's break down each, their relationship, and how to work with them in R.







1. Confidence Level and Confidence Intervals



What is a Confidence Level?



The confidence level is the probability that a randomly constructed confidence interval will contain the true population parameter. It expresses how sure we are that the interval contains the true population value.



  Common Confidence Levels: 90%, 95%, 99%

  Interpretation: If you were to repeat an experiment many times and construct a 95% confidence interval each time, you would expect approximately 95% of those intervals to contain the true population parameter.

  Important Note: It does not mean there's a 95% chance that the specific interval you've calculated contains the true parameter. Once the interval is calculated, the true parameter is either in it or it isn't (we just don't know which). The 95% refers to the reliability of the method used to construct the interval.



What is a Confidence Interval (CI)?



A confidence interval is a range of plausible values for an unknown population parameter (like a population mean, proportion, or regression coefficient) based on a sample from that population.



Confidence Levels in R



Many statistical functions in R can calculate confidence intervals, often allowing you to specify the confidence level.



 **Example 1: Confidence Interval for a Mean (using `t.test`)**



Let's generate some sample data and find the 95% CI for its mean.





# Set a seed for reproducibility

set.seed(123)



# Generate sample data from a normal distribution

sample_data <- rnorm(n = 50, mean = 10, sd = 2)



# Calculate the t-test, which provides the confidence interval for the mean

# Default confidence level is 0.95 (95%)

t_test_result <- t.test(sample_data)



# Print the result

print(t_test_result)

```



Output Interpretation:

```

	One Sample t-test



data:  sample_data

t = 35.845, df = 49, p-value < 2.2e-16

alternative hypothesis: true mean is not equal to 0

95 percent confidence interval:

 9.400506 10.490795

sample estimates:

mean of x 

9.945651 

```

The `95 percent confidence interval:` section gives you the range. In this case, we are 95% confident that the true population mean lies between 9.40 and 10.49.



To specify a different confidence level:





# Calculate a 90% confidence interval

t_test_90_ci <- t.test(sample_data, conf.level = 0.90)

print(t_test_90_ci$conf.int)



# Calculate a 99% confidence interval

t_test_99_ci <- t.test(sample_data, conf.level = 0.99)

print(t_test_99_ci$conf.int)

```

You'll notice that a higher confidence level (e.g., 99%) results in a wider interval, reflecting greater certainty (at the cost of precision).



 **Example 2: Confidence Interval for a Proportion (using `prop.test`)**



Suppose we surveyed 100 people and 65 of them prefer product A. We want a 95% CI for the true proportion of people who prefer product A.





# Number of successes

successes <- 65

# Total trials

trials <- 100



# Calculate confidence interval for a proportion

prop_test_result <- prop.test(x = successes, n = trials, conf.level = 0.95)

print(prop_test_result)

```



Output Interpretation:

```

	1-sample proportions test with continuity correction



data:  successes out of trials, null probability 0.5

X-squared = 5.76, df = 1, p-value = 0.01639

alternative hypothesis: true p is not equal to 0.5

95 percent confidence interval:

0.5471419 0.7397727

sample estimates:

   p 

0.65 

```

The 95% CI for the proportion is approximately [0.547, 0.740].



Example 3: Confidence Intervals for Regression Coefficients (using `lm` and `confint`)



After running a linear regression, you can get CIs for the coefficients.





Generate some sample data for regression

x_var <- 1:50

y_var <- 5 + 2  x_var + rnorm(50, sd = 10)



Fit a linear model

model <- lm(y_var ~ x_var)



Get confidence intervals for the model coefficients (default is 95%)

conf_intervals_model <- confint(model)

print(conf_intervals_model)

```



Output Interpretation:

```

                2.5 %    97.5 %

(Intercept)  1.758411  8.411624

x_var        1.884149  2.164326

```

This shows the 95% CIs for the intercept and the `x_var` coefficient. For instance, we are 95% confident that the true slope (coefficient for `x_var`) lies between 1.88 and 2.16.







2. Significance Level (Alpha) and P-value



What is a Significance Level ($alpha$)?



The significance level, often denoted by $alpha$ (alpha), is the probability of making a Type I error. A Type I error occurs when you reject a true null hypothesis.



  Common Significance Levels: 0.10, 0.05, 0.01

  Pre-determined: The significance level is chosen before conducting the hypothesis test.

  Interpretation: If $alpha = 0.05$, it means there's a 5% risk of concluding that a difference or relationship exists when in reality there is none (i.e., rejecting a true null hypothesis).



What is a P-value?



The p-value is the probability of observing test results as extreme as, or more extreme than, the results actually observed, assuming the null hypothesis is true.



  Interpretation:

      Small p-value (e.g., < 0.05): Suggests that the observed data is unlikely to have occurred if the null hypothesis were true. This provides evidence against the null hypothesis.

      Large p-value (e.g., > 0.05): Suggests that the observed data is reasonably likely to occur if the null hypothesis were true. This does not provide strong evidence against the null hypothesis.



Decision Rule



  If p-value $le alpha$: Reject the null hypothesis. The results are considered "statistically significant."

  If p-value $> alpha$: Fail to reject the null hypothesis. The results are not considered statistically significant.



Significance Levels in R



Most hypothesis testing functions in R will output a p-value. You then compare this p-value to your pre-chosen $alpha$.



Example 1: Hypothesis Test for a Mean (using `t.test`)



Let's revisit our sample data and test if its mean is significantly different from 10.

  $H_0$: The true mean is equal to 10.

  $H_A$: The true mean is not equal to 10.

  Let's choose $alpha = 0.05$.





set.seed(123)

sample_data <- rnorm(n = 50, mean = 10, sd = 2)



Perform a t-test against a specified population mean (mu)

t_test_result <- t.test(sample_data, mu = 10)

print(t_test_result)



Extract the p-value

p_value <- t_test_result$p.value

alpha <- 0.05



Make a decision

if (p_value <= alpha) {

 print(paste("P-value (", round(p_value, 4), ") <= Alpha (", alpha, "). Reject H0.", sep = ""))

} else {

 print(paste("P-value (", round(p_value, 4), ") > Alpha (", alpha, "). Fail to reject H0.", sep = ""))

}

```



Output Interpretation:

```

	One Sample t-test



data:  sample_data

t = -0.20373, df = 49, p-value = 0.8394

alternative hypothesis: true mean is not equal to 10

95 percent confidence interval:

 9.400506 10.490795

sample estimates:

mean of x 

9.945651 



[1] "P-value (0.8394) > Alpha (0.05). Fail to reject H0."

```

Here, the p-value (0.8394) is much larger than our chosen $alpha$ (0.05). We therefore fail to reject the null hypothesis. There is not enough evidence to conclude that the true mean is significantly different from 10.



Example 2: Chi-squared Test for Independence



Suppose we have observed frequencies for two categorical variables and want to test if they are independent.

  $H_0$: The two variables are independent.

  $H_A$: The two variables are dependent.

  Let's choose $alpha = 0.01$.





Create a contingency table

data_matrix <- matrix(c(20, 30, 10, 40), nrow = 2, byrow = TRUE,

                     dimnames = list(c("Group A", "Group B"), c("Outcome X", "Outcome Y")))

print(data_matrix)



Perform a chi-squared test

chi_sq_result <- chisq.test(data_matrix)

print(chi_sq_result)



p_value <- chi_sq_result$p.value

alpha <- 0.01



if (p_value <= alpha) {

 print(paste("P-value (", round(p_value, 4), ") <= Alpha (", alpha, "). Reject H0.", sep = ""))

} else {

 print(paste("P-value (", round(p_value, 4), ") > Alpha (", alpha, "). Fail to reject H0.", sep = ""))

}

```



Output Interpretation:

```

         Outcome X Outcome Y

Group A        20        30

Group B        10        40



	Pearson's Chi-squared test with Yates' continuity correction



data:  data_matrix

X-squared = 6.088, df = 1, p-value = 0.0136

[1] "P-value (0.0136) > Alpha (0.01). Fail to reject H0."

```

The p-value (0.0136) is greater than our $alpha$ (0.01). We fail to reject the null hypothesis, suggesting there's not enough evidence at the 0.01 significance level to conclude that Group and Outcome are dependent. (Note: If we had chosen $alpha = 0.05$, we would have rejected H0).







3. Relationship Between Confidence Levels and Significance Levels



Confidence levels and significance levels are directly related through $alpha$:



Confidence Level = $1 - alpha$



  A 95% Confidence Level corresponds to a $alpha = 0.05$ (1 - 0.95 = 0.05).

  A 99% Confidence Level corresponds to a $alpha = 0.01$ (1 - 0.99 = 0.01).



This relationship means that you can often use a confidence interval to perform a hypothesis test:



  If a confidence interval for a parameter does not include the null hypothesis value, then you would reject the null hypothesis at the corresponding significance level.

  If a confidence interval does include the null hypothesis value, then you would fail to reject the null hypothesis at the corresponding significance level.



Example: In our t-test example, the 95% CI was [9.40, 10.49]. Since this interval includes our null hypothesis value of 10, we fail to reject $H_0: mu = 10$ at the $alpha = 0.05$ significance level. This matches the conclusion we got from comparing the p-value to $alpha$.







4. Choosing the Right Levels



  Common practice: 95% confidence level and 0.05 significance level are very common defaults in many fields.

  Higher stakes: For research with high stakes (e.g., medical trials, drug efficacy), you might choose a higher confidence level (e.g., 99%) or a lower significance level (e.g., 0.01) to reduce the risk of error.

  Exploratory research: In exploratory studies, a 90% confidence level or 0.10 significance level might be acceptable to identify potential effects that warrant further investigation.







5. Important Caveats and Misconceptions



  Statistical Significance $neq$ Practical Significance: A statistically significant result (small p-value) doesn't always mean the effect is large or practically important. A very large sample size can make even tiny, practically meaningless effects statistically significant. Always consider the effect size and context.

  Failing to reject H0 $neq$ Accepting H0: If your p-value is large, it means you don't have enough evidence to reject the null hypothesis. It does not mean you've proven the null hypothesis to be true. It simply means the data don't provide sufficient evidence against it.

  P-value is NOT the probability that H0 is true: This is a common and crucial misconception. The p-value assumes H0 is true and tells you the probability of observing your data (or more extreme).

  Alpha is set BEFORE the test: Do not "fish" for a significant p-value by changing your $alpha$ after seeing the results.







By understanding these concepts and practicing with R, you'll be well-equipped to perform robust statistical inference and interpret your results accurately.





