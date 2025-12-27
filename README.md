# Energy Demand Forecasting: Statistical vs Deep Learning Approaches

## 📌 Context & Overview
Modern electrical grids face the significant challenge of balancing supply and demand. Accurate forecasting is essential to guarantee grid stability, optimize production costs, and minimize emergency energy imports.

This project develops a decision-support tool using **Time Series Analysis** to predict hourly energy demand over short and medium terms.

## 🎯 Objectives
* **Load Planning:** Anticipating peak consumption to ensure continuous supply.
* **Cost Optimization:** Reducing expenses related to overproduction and unnecessary storage.
* **Strategic Support:** Providing data-driven insights for energy efficiency policies and infrastructure investment.

## 📊 Data Description
* **Type:** Univariate Time Series (Hourly Energy Consumption).
* **Period:** Jan 1st, 2017 to Dec 31st, 2022 (6 full years).
* **Size:** 52,584 observations.
* **Characteristics:** Non-stationary data with strong multi-level seasonality (daily, weekly, yearly).

## 🛠️ Methodology & Tech Stack
* **Language:** Python 
* **Environment:** VS Code, Jupyter Lab, Google Colab.
* **Libraries:** `Pandas`, `NumPy`, `Statsmodels` (SARIMA), `TensorFlow/Keras` (LSTM), `Matplotlib`, `Seaborn`.

### Workflow:
1. **EDA:** Outlier detection and recurrent pattern analysis.
2. **Decomposition:** Trend, Seasonality, and Residual analysis.
3. **Statistical Modeling:** Implementing **SARIMA (0, 1, 3)(2, 0, 0)**.
4. **Deep Learning:** Implementing **LSTM (Long Short-Term Memory)** networks to capture long-term dependencies.
5. **Evaluation:** Performance assessment using **MAE** and **RMSE**.

## 🚀 Key Results
The energy consumption series was confirmed to be non-stationary. 
* **SARIMA Approach:** Captured core dynamics but struggled with non-normal residuals and heteroscedasticity.
* **LSTM Approach:** Successfully predicted the next 720 hourly values. By aggregating data to a daily scale, computation time was reduced while maintaining high precision.
* **Performance Metrics:**
    * **MAE:** ~223.78
    * **RMSE:** ~291.29
    * **Relative Mean Error:** 2.5%



## 🔮 Perspectives for Improvement
* **Exogenous Variables:** Integrating weather data (temperature, humidity) to refine predictions.
* **Hybrid Models:** Combining Prophet or XGBoost with LSTM for better peak handling.
* **Attention Mechanisms:** Implementing Transformer-based architectures to give more weight to critical peak periods.
