**### 1. Hypothesis Test**



A hypothesis test is a formal procedure used to decide between two competing statements (hypotheses) about a population parameter based on sample data. It's a structured way to determine if there is enough evidence in a sample to conclude that a certain condition or effect exists in the population, or if observed differences are likely due to random chance.



**Key Components/Steps:**



**1.  Formulate Hypotheses:**

&nbsp;   \*   Null Hypothesis (H₀): A statement of no effect, no difference, or no relationship. It represents the status quo or a default assumption. (e.g., "The new drug has no effect on blood pressure.")

&nbsp;   \*   Alternative Hypothesis (H₁ or Hₐ): A statement that contradicts the null hypothesis, suggesting an effect, difference, or relationship. This is usually what the researcher is trying to prove. (e.g., "The new drug \*does\* reduce blood pressure.")

2\.  Set Significance Level (α): The probability of rejecting the null hypothesis when it is actually true (Type I error). Common values are 0.05 (5%), 0.01 (1%), or 0.10 (10%).

3\.  Choose a Test Statistic: A value calculated from the sample data that measures how far the sample results deviate from what is expected under the null hypothesis (e.g., t-statistic, z-statistic, F-statistic, chi-square statistic).

4\.  Determine the P-value: The probability of observing a test statistic as extreme as, or more extreme than, the one calculated from the sample data, \*assuming the null hypothesis is true\*.

5\.  Make a Decision:

&nbsp;   \*   If P-value ≤ α: Reject H₀. There is sufficient evidence to support the alternative hypothesis.

&nbsp;   \*   If P-value > α: Fail to Reject H₀. There is not sufficient evidence to support the alternative hypothesis.

6\.  Draw a Conclusion: Interpret the decision in the context of the original research question.







**### 2. Parametric Test**



Parametric tests are a class of hypothesis tests that make specific assumptions about the parameters of the population distribution from which the sample data is drawn. Most commonly, they assume the data comes from a population with a \*normal distribution\*.



Key Characteristics \& Assumptions:



\*   Assumes specific distribution: Often normality (or approximate normality due to the Central Limit Theorem for large samples).

\*   Requires interval or ratio data: Data that has meaningful intervals between values and/or a true zero point.

\*   Assumptions about variances: Some parametric tests (like independent samples t-test) assume homogeneity of variances (equal variances across groups).

\*   More powerful: If their assumptions are met, parametric tests are generally more powerful than non-parametric tests, meaning they have a higher probability of detecting a real effect if one exists.



Common Examples:



\*   Z-test: For means (when population standard deviation is known) or proportions (large samples).

\*   T-test: For means (when population standard deviation is unknown).

&nbsp;   \*   One-sample t-test

&nbsp;   \*   Independent samples t-test

&nbsp;   \*   Paired samples t-test

\*   ANOVA (Analysis of Variance): For comparing means of three or more groups.

\*   Pearson Correlation: For measuring linear relationship between two continuous variables.

\*   Regression Analysis: For modeling the relationship between a dependent variable and one or more independent variables.







**### 3. Non-parametric Test**



Non-parametric tests are a class of hypothesis tests that do \*not\* make specific assumptions about the distribution of the population from which the sample data is drawn. They are often called "distribution-free" tests. They are particularly useful when data does not meet the assumptions of parametric tests, especially normality.



Key Characteristics \& Advantages:



\*   No distribution assumption: They don't assume data follows a normal distribution.

\*   Can handle ordinal or nominal data: Suitable for ranked data or categorical data.

\*   Robust to outliers: Less sensitive to extreme values in the data.

\*   Useful for small sample sizes: When normality is hard to assess or achieve.

\*   Less powerful: Generally less powerful than parametric tests if the parametric assumptions \*are\* met. They often convert raw data into ranks, losing some information.



Common Examples:



\*   Mann-Whitney U Test (or Wilcoxon Rank-Sum Test): Non-parametric alternative to the independent samples t-test (comparing two independent groups).

\*   Wilcoxon Signed-Rank Test: Non-parametric alternative to the paired samples t-test (comparing two related groups).

\*   Kruskal-Wallis H Test: Non-parametric alternative to one-way ANOVA (comparing three or more independent groups).

\*   Chi-Square Tests (χ²):

&nbsp;   \*   Goodness-of-Fit Test: To see if observed frequencies fit an expected distribution.

&nbsp;   \*   Test of Independence: To see if there's an association between two categorical variables.

\*   Spearman's Rank Correlation: Non-parametric alternative to Pearson correlation (for ranked data or non-linear monotonic relationships).







**### 4. Hypothesis Test About Population Means, Variance, Proportions**



These specify \*what population parameter\* the hypothesis test is focused on. The choice of specific test (parametric vs. non-parametric) depends on the parameter, data type, and assumptions.



**#### a) Hypothesis Test About Population Means (μ)**



\*   What it tests: Whether the average value of a variable in a population is equal to a specific value, or whether the average values of two or more populations are equal.

\*   Use Cases:

&nbsp;   \*   Comparing the average height of students in a school to the national average.

&nbsp;   \*   Testing if a new teaching method improves average test scores.

&nbsp;   \*   Comparing the average income of two different cities.

\*   Common Tests:

&nbsp;   \*   Parametric: Z-test for means, T-tests (one-sample, independent, paired), ANOVA.

&nbsp;   \*   Non-parametric: Mann-Whitney U Test, Wilcoxon Signed-Rank Test, Kruskal-Wallis H Test.

\*   Example Hypotheses:

&nbsp;   \*   H₀: μ = 100 (Population mean is 100)

&nbsp;   \*   H₁: μ ≠ 100 (Population mean is not 100)

&nbsp;   \*   H₀: μ₁ = μ₂ (Two population means are equal)

&nbsp;   \*   H₁: μ₁ ≠ μ₂ (Two population means are not equal)



**#### b) Hypothesis Test About Population Variances (σ²)**



\*   What it tests: Whether the spread or dispersion of data in a population is equal to a specific value, or whether the variances of two populations are equal.

\*   Use Cases:

&nbsp;   \*   Comparing the consistency of two manufacturing processes.

&nbsp;   \*   Checking the assumption of equal variances (homoscedasticity) before performing t-tests or ANOVA.

&nbsp;   \*   Determining if a new policy reduces the variability in customer wait times.

\*   Common Tests:

&nbsp;   \*   Parametric:

&nbsp;       \*   Chi-square test for one variance: To test if a single population variance equals a specific value.

&nbsp;       \*   F-test for two variances: To test if two population variances are equal.

\*   Example Hypotheses:

&nbsp;   \*   H₀: σ² = 25 (Population variance is 25)

&nbsp;   \*   H₁: σ² ≠ 25 (Population variance is not 25)

&nbsp;   \*   H₀: σ₁² = σ₂² (Variances of two populations are equal)

&nbsp;   \*   H₁: σ₁² ≠ σ₂² (Variances of two populations are not equal)



**#### c) Hypothesis Test About Population Proportions (p)**



\*   What it tests: Whether the proportion (or percentage) of individuals in a population possessing a certain characteristic is equal to a specific value, or whether the proportions of two or more populations are equal.

\*   Use Cases:

&nbsp;   \*   Testing if the success rate of a new drug is above 70%.

&nbsp;   \*   Comparing the proportion of voters who support a candidate in two different regions.

&nbsp;   \*   Determining if a marketing campaign increased product preference.

\*   Common Tests:

&nbsp;   \*   Parametric (for large samples): Z-test for one proportion, Z-test for two proportions.

&nbsp;   \*   Non-parametric (for categorical data, including proportions): Chi-square test (Goodness-of-Fit, Test of Independence).

\*   Example Hypotheses:

&nbsp;   \*   H₀: p = 0.50 (Population proportion is 50%)

&nbsp;   \*   H₁: p > 0.50 (Population proportion is greater than 50%)

&nbsp;   \*   H₀: p₁ = p₂ (Two population proportions are equal)

&nbsp;   \*   H₁: p₁ ≠ p₂ (Two population proportions are not equal)







In summary:



\*   A Hypothesis Test is the overarching framework for making statistical decisions.

\*   Parametric Tests and Non-parametric Tests are the two main categories of specific statistical procedures \*within\* that framework, distinguished by their assumptions about the population distribution.

\*   Tests about Population Means, Variances, and Proportions specify \*what aspect\* of the population you are investigating with your hypothesis test.

