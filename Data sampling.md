**Data sampling** is a fundamental technique in statistics and machine learning, used to select a subset of data from a larger dataset. This subset (the sample) is then used to draw inferences about the entire dataset (the population).



R provides excellent tools for various sampling strategies, from simple random sampling to more complex stratified sampling.



Here's a comprehensive guide to data sampling in R, covering common scenarios:







 **1. Basic Concepts**



    Population: The entire dataset you're interested in.

    Sample: A subset of the population.

    Sampling with Replacement: An observation can be selected multiple times. Useful for bootstrapping.

    Sampling without Replacement: An observation, once selected, cannot be selected again. Standard for most representative sampling.

    Reproducibility: Always set a seed (`set.seed()`) to ensure your random sampling can be replicated.







 **2. Simple Random Sampling**



This is the most basic form of sampling, where every item in the population has an equal chance of being selected.



  **2.1. Sampling from a Vector (Base R: `sample()`)**



The `sample()` function is perfect for vectors.





# Sample vector

my_vector <- 1:100



# 1. Sample 10 random numbers without replacement

sample_1 <- sample(my_vector, size = 10, replace = FALSE)

print(sample_1)



# 2. Sample 10 random numbers with replacement

sample_2 <- sample(my_vector, size = 10, replace = TRUE)

print(sample_2)



# 3. Setting a seed for reproducibility

set.seed(123)

sample_reproducible_1 <- sample(my_vector, size = 10)

set.seed(123)

sample_reproducible_2 <- sample(my_vector, size = 10)

print(sample_reproducible_1)

print(sample_reproducible_2) # Will be identical to sample_reproducible_1

```



  **2.2. Sampling Rows from a Data Frame (Base R)**



You can use `sample()` to get row indices, and then subset your data frame.





# Create a sample data frame

df <- data.frame(

   ID = 1:100,

   Value = rnorm(100),

   Category = sample(c("A", "B", "C"), 100, replace = TRUE)

)



# 1. Get 10 random row indices

set.seed(42)

sample_indices <- sample(nrow(df), size = 10, replace = FALSE)



# 2. Extract the sampled rows

df_sample_base <- df[sample_indices, ]

print(df_sample_base)



# Sample 10% of the data

sample_fraction_indices <- sample(nrow(df), size = floor(nrow(df)  0.10), replace = FALSE)

df_sample_10_percent <- df[sample_fraction_indices, ]

print(nrow(df_sample_10_percent))

```



 **2.3. Sampling Rows from a Data Frame (Tidyverse: `dplyr`)**



The `dplyr` package (part of the `tidyverse`) offers very convenient functions for sampling data frames: `sample_n()` and `sample_frac()`.





library(dplyr)



# Create a sample data frame (same as above)

df <- data.frame(

   ID = 1:100,

   Value = rnorm(100),

   Category = sample(c("A", "B", "C"), 100, replace = TRUE)

)



# 1. Sample 'n' rows (e.g., 10 rows)

set.seed(42)

df_sample_n <- df %>%

   sample_n(size = 10, replace = FALSE) # default is replace=FALSE

print(df_sample_n)



# 2. Sample a 'fraction' of rows (e.g., 10%)

set.seed(42)

df_sample_frac <- df %>%

   sample_frac(size = 0.10, replace = FALSE) # default is replace=FALSE

print(df_sample_frac)



# 3. Sampling with replacement (bootstrapping)

set.seed(42)

df_sample_boot <- df %>%

   sample_n(size = 100, replace = TRUE) # Sample 100 rows with replacement

print(head(df_sample_boot))

print(nrow(df_sample_boot)) # Will still be 100 rows, but some original rows will be duplicated

```







 **3. Stratified Sampling**



Stratified sampling involves dividing the population into non-overlapping subgroups (strata) and then taking a sample from each stratum. This ensures that each subgroup is represented in the final sample proportionally (or disproportionally, if desired).



  **3.1. Stratified Sampling with `dplyr`**



This approach is flexible and uses `group_by()` in combination with `sample_n()` or `sample_frac()`.





library(dplyr)



# Create a data frame with imbalanced categories

df_stratified <- data.frame(

   ID = 1:200,

   Age = sample(18:60, 200, replace = TRUE),

   Education = sample(c("High School", "Bachelors", "Masters", "PhD"),

                      200, replace = TRUE, prob = c(0.4, 0.3, 0.2, 0.1)),

   Income = rnorm(200, mean = 50000, sd = 15000)

)



# View counts per stratum

df_stratified %>% count(Education)



# Goal: Sample 5 rows from 'High School', 3 from 'Bachelors', etc., or a fixed proportion from each.



# 1. Stratified sampling with a fixed number of samples per group

set.seed(123)

df_sample_stratified_n <- df_stratified %>%

   group_by(Education) %>%

   sample_n(size = 5, replace = TRUE) # Sampling 5 from each, replace=TRUE to ensure small groups can provide 5



print(df_sample_stratified_n %>% count(Education))



# 2. Stratified sampling with a fixed fraction of samples per group

set.seed(123)

df_sample_stratified_frac <- df_stratified %>%

   group_by(Education) %>%

   sample_frac(size = 0.2) # Sample 20% from each group



print(df_sample_stratified_frac %>% count(Education))

```



 **3.2. Stratified Sampling with `splitstackshape::stratified()`**



The `splitstackshape` package provides a dedicated function `stratified()` which can be very convenient.





# install.packages("splitstackshape")

library(splitstackshape)



# Using the same df_stratified

set.seed(123)

df_sample_stratified_sps <- stratified(

   indt = df_stratified,

   group = "Education", # The column to stratify by

   size = 0.2,          # Proportion to sample from each stratum

   select = list(Education = c("High School", "Bachelors", "Masters", "PhD")), # Optional: specify which strata to include

   bothSets = FALSE     # If TRUE, returns two data.frames: the sample and the remaining

)



print(df_sample_stratified_sps %>% count(Education))



# You can also specify absolute numbers for each group using a named vector for `size`:

set.seed(123)

df_sample_stratified_sps_n <- stratified(

   indt = df_stratified,

   group = "Education",

   size = c("High School" = 10, "Bachelors" = 5, "Masters" = 3, "PhD" = 2),

   replace = TRUE # Use replace=TRUE if a stratum might have fewer observations than specified size

)

print(df_sample_stratified_sps_n %>% count(Education))

```







 **4. Train/Test Split (for Machine Learning)**



A common sampling task in machine learning is to split a dataset into training and testing sets. This is often a form of stratified sampling if you want to maintain the proportion of a target variable (especially for classification tasks).



 **4.1. Using `caret::createDataPartition()`**



The `caret` package is excellent for this, ensuring that the proportion of the outcome variable is roughly the same in both training and testing sets.





# install.packages("caret")

library(caret)



# Create a sample dataset for classification

df_ml <- data.frame(

   Feature1 = rnorm(200),

   Feature2 = runif(200),

   Outcome = sample(c("Yes", "No"), 200, replace = TRUE, prob = c(0.7, 0.3))

)



# View imbalance

df_ml %>% count(Outcome)



# Create data partition (70% for training)

set.seed(123)

train_indices <- createDataPartition(

   y = df_ml$Outcome, # Stratify by the Outcome variable

   p = 0.7,           # 70% for training

   list = FALSE       # Return a matrix/vector of indices, not a list

)



# Create training and testing sets

training_set <- df_ml[train_indices, ]

testing_set <- df_ml[-train_indices, ]



# Check proportions in training set

print(training_set %>% count(Outcome))

# Check proportions in testing set

print(testing_set %>% count(Outcome))



# Notice how the proportions of "Yes" and "No" are maintained in both sets.

```



 **4.2. Using `rsample::initial_split()` (Tidymodels)**



The `rsample` package (part of the `tidymodels` ecosystem) provides a modern and consistent way to perform resampling tasks.





# install.packages("rsample")

library(rsample)



# Using the same df_ml

set.seed(123)

data_split <- initial_split(

   data = df_ml,

   prop = 0.7,         # 70% for training

   strata = Outcome    # Stratify by the Outcome variable

)



# Extract training and testing sets

training_set_rsample <- training(data_split)

testing_set_rsample <- testing(data_split)



# Check proportions

print(training_set_rsample %>% count(Outcome))

print(testing_set_rsample %>% count(Outcome))

```







 **5. Bootstrapping**



Bootstrapping is a resampling technique where you repeatedly sample with replacement from your observed data to create many simulated datasets. This is commonly used to estimate the sampling distribution of a statistic (e.g., mean, median, regression coefficient) or to construct confidence intervals.



As shown previously, you can do this with:



    `sample(..., replace = TRUE)` for vectors or row indices.

    `dplyr::sample_n(..., replace = TRUE)` or `dplyr::sample_frac(..., replace = TRUE)` for data frames.





library(dplyr)



# Original data

data_points <- c(10, 12, 15, 11, 13, 18, 14, 16, 20, 9)



# Perform 1000 bootstrap samples to estimate the mean

n_bootstrap_samples <- 1000

bootstrap_means <- numeric(n_bootstrap_samples)



set.seed(42)

for (i in 1:n_bootstrap_samples) {

   bootstrap_sample <- sample(data_points, size = length(data_points), replace = TRUE)

   bootstrap_means[i] <- mean(bootstrap_sample)

}



# View the distribution of bootstrap means

hist(bootstrap_means, main = "Distribution of Bootstrap Means")

print(paste("Original Mean:", mean(data_points)))

print(paste("Bootstrap Mean (average):", mean(bootstrap_means)))

print(paste("Standard Error (estimated from bootstrap):", sd(bootstrap_means)))

```







 **Key Considerations**



    `set.seed()`: Always use it for reproducible results.

    Sample Size: The appropriate sample size depends on your research question, population variability, and desired precision.

    Sampling Bias: Be aware of potential biases introduced by your sampling method. Random sampling helps minimize this, but improper stratification or non-random selection can lead to unrepresentative samples.

    Purpose: The best sampling method depends entirely on your objective (e.g., descriptive statistics, hypothesis testing, machine learning model training).



By understanding and applying these R functions and techniques, you can effectively manage and prepare your data for various analytical tasks.

