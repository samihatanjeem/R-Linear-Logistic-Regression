# Statistical Modeling in R
# Install.packages("ggplot2")
# Load libraries
library(datasets)
library(ggplot2)
library(caret)
library(pROC)

# Part 1: Linear Regression Models

# Dataset: mtcars
data(mtcars)

# 1. Multiple Linear Regression (MLR)
# Fit a multiple linear regression model to predict mpg using at least three predictors
mlr_model <- lm(mpg ~ hp + wt + qsec, data = mtcars)
summary(mlr_model)

# 2. Qualitative Variable in MLR
# Convert 'cyl' into a factor and include it in the model
mtcars$cyl <- as.factor(mtcars$cyl)
mlr_model_with_cyl <- lm(mpg ~ hp + wt + qsec + cyl, data = mtcars)
summary(mlr_model_with_cyl)

# 3. Nonlinear Regression Models
# Fit a polynomial regression model to predict mpg using hp
poly_model <- lm(mpg ~ poly(hp, 2), data = mtcars)
summary(poly_model)

# Compare the model fit with the linear model using adjusted R² and residual plots
adj_r2_mlr <- summary(mlr_model)$adj.r.squared
adj_r2_poly <- summary(poly_model)$adj.r.squared

# Residual plots
par(mfrow = c(2, 2))
plot(mlr_model)
plot(poly_model)

# 4. Model Fitness and Significance
# Report and interpret R², Adjusted R², F-statistic, t-tests, and diagnostic plots
r2_mlr <- summary(mlr_model)$r.squared
adj_r2_mlr <- summary(mlr_model)$adj.r.squared
f_stat_mlr <- summary(mlr_model)$fstatistic
p_value_f_mlr <- pf(f_stat_mlr[1], f_stat_mlr[2], f_stat_mlr[3], lower.tail = FALSE)

# Diagnostic plots
par(mfrow = c(2, 2))
plot(mlr_model)

# Part 2: Logistic Regression Models

# Dataset: Titanic
data(Titanic)
titanic_df <- as.data.frame(Titanic)

# Convert the dataset into a data frame suitable for logistic regression
titanic_df <- titanic_df[rep(row.names(titanic_df), titanic_df$Freq), 1:4]
titanic_df$Survived <- factor(titanic_df$Survived, levels = c("No", "Yes"))

# 1. Model Fitting
# Fit a logistic regression model to predict survival using Class, Sex, and Age
logit_model <- glm(Survived ~ Class + Sex + Age, data = titanic_df, family = binomial)

# View the coefficients
summary(logit_model)

# Exponentiate the coefficients to get odds ratios
exp(coef(logit_model))

# 2. Model Validation
# Confusion matrix, accuracy, and ROC curve
predicted <- predict(logit_model, type = "response")
predicted_class <- ifelse(predicted > 0.5, "Yes", "No")
conf_matrix <- table(Predicted = predicted_class, Actual = titanic_df$Survived)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)

# 3. ROC curve
library(pROC)
roc_curve <- roc(titanic_df$Survived, predicted)
plot(roc_curve)

# 4. Interpretation
# Inspect the coefficients (log-odds) and their significance
summary(logit_model)
