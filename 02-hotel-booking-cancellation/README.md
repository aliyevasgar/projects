# 🏨 Hotel Booking Cancellation Analysis

This project analyzes hotel booking data to understand cancellation behavior and builds machine learning models to predict whether a booking is likely to be canceled. The goal is to extract actionable insights that can help hotels improve revenue management, reduce cancellation-related losses, and better understand customer booking patterns.

---

## 📌 Dataset

- **Source:** Hotel Booking Demand dataset
- **Size:** 119,390 records
- **Type:** Structured tabular data
- **Target:** `is_canceled`

---

## 🎯 Objectives

- Analyze patterns behind hotel booking cancellations
- Identify the main factors influencing cancellations
- Build a predictive model for cancellation probability
- Provide business insights for hotel decision-making

---

## 🧠 Approach

### Data Preprocessing
- Handled missing values
- Encoded categorical variables
- Managed outliers where needed
- Prepared the dataset for machine learning models

### Feature Engineering
- `total_guests`
- `total_stay_nights`
- `is_company_booking`
- `is_room_changed`
- `has_booking_changes`
- `is_demanding_customer`
- Monthly and seasonal trend features

---

## 🔍 Exploratory Data Analysis

Some key findings from the analysis:

- Overall cancellation rate: **37.04%**
- City Hotel cancellation rate: **41.73%**
- Resort Hotel cancellation rate: **27.76%**
- Median lead time for canceled bookings: **113 days**
- Median lead time for non-canceled bookings: **45 days**

---

## 🤖 Machine Learning Models

- Logistic Regression (baseline model)
- Random Forest Classifier
- XGBoost Classifier
- Tuned Random Forest Classifier
- Cross-validation used for model evaluation
- Hyperparameter tuning performed with `RandomizedSearchCV`

---

## 📊 Model Performance

### Logistic Regression
- **Accuracy:** 0.8343

### Random Forest
- **Accuracy:** 0.8979

### XGBoost
- **Accuracy:** 0.8713

---

## 🏆 Tuned Random Forest Results

After hyperparameter tuning with 5-fold cross-validation across 30 candidates, the final model achieved strong performance on the test set.

### Best Hyperparameters
- `n_estimators`: 300
- `max_depth`: None
- `min_samples_leaf`: 1
- `max_features`: 0.3

### Performance Metrics
- **Best CV Accuracy:** 0.8906
- **Test Accuracy:** 0.8987

### Confusion Matrix
```python
[[13896  1011]
 [ 1409  7562]]