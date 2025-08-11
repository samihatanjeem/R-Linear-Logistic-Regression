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
   <img width="1060" height="651" alt="image" src="https://github.com/user-attachments/assets/20695936-8dd3-4cde-a9fc-4fa116fcfa0e" />
4. **Model Fitness and Significance**  
   Report and interpret R², Adjusted R², F-statistic, p-values, and diagnostic plots.
   <img width="1087" height="654" alt="image" src="https://github.com/user-attachments/assets/eea7fa54-cd12-4cd6-94d5-2f3082d029a3" />

### Part 2: Logistic Regression (Titanic dataset)
1. **Model Fitting**  
   Predict passenger survival using `Class`, `Sex`, and `Age`.
2. **Model Validation**  
   Generate a confusion matrix, calculate accuracy, and plot an ROC curve.
3. **Interpretation**  
   Extract odds ratios and interpret the coefficients for significance.
   <img width="1062" height="506" alt="image" src="https://github.com/user-attachments/assets/bf676880-17db-4fa3-9822-99eeea0e9eef" />

---
## Results & Interpretations

### Linear Regression (mtcars)
- **Weight** (`wt`) had the strongest negative impact on MPG (-4.36 mpg per unit increase, p < 0.001).  
- **Horsepower** (`hp`) and **Quarter Mile Time** (`qsec`) were not statistically significant predictors.  
- Model explains 83% of variance (Adjusted R² = 0.8171).  

### Logistic Regression (Titanic)
- **Sex** was the strongest survival predictor - females had ~11x higher odds of survival.  
- **Passenger Class** showed a strong effect: 2nd and 3rd class passengers had much lower odds compared to 1st class.  
- **Adults** had lower odds of survival than children (odds ratio ~0.35).  
- Accuracy: ~77%, with ROC curve showing good discrimination ability.
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
