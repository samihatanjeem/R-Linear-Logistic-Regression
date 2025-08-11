# R-Linear-Logistic-Regression
This project demonstrates statistical modeling in R using two well-known datasets: **mtcars** and **Titanic**.  
It covers both **linear regression** and **logistic regression**, including model diagnostics, performance evaluation, and visualization.

# MTCars & Titanic Regression Analysis in R
## Objectives

### Part 1: Linear Regression (mtcars dataset)
1. **Multiple Linear Regression (MLR)**  
   Predict `mpg` (miles per gallon) using multiple predictors (`hp`, `wt`, `qsec`).
2. **Qualitative Variables in MLR**  
   Convert `cyl` to a factor variable and include it in the model.
3. **Nonlinear Regression**  
   Fit a polynomial regression model and compare performance with MLR using Adjusted R² and residual plots.
4. **Model Fitness and Significance**  
   Report and interpret R², Adjusted R², F-statistic, p-values, and diagnostic plots.

### Part 2: Logistic Regression (Titanic dataset)
1. **Model Fitting**  
   Predict passenger survival using `Class`, `Sex`, and `Age`.
2. **Model Validation**  
   Generate a confusion matrix, calculate accuracy, and plot an ROC curve.
3. **Interpretation**  
   Extract odds ratios and interpret the coefficients for significance.

---

## Tools & Libraries Used
- **R base packages**
  - `datasets` - access to built-in datasets (mtcars, Titanic)
  - `stats` - regression modeling functions (`lm`, `glm`)
- **Data Visualization**
  - `ggplot2` - plotting and visualizing relationships
  - Base R plotting functions for diagnostics
- **Model Evaluation**
  - `caret` - model training and evaluation tools
  - `pROC` - ROC curve plotting and AUC calculation
