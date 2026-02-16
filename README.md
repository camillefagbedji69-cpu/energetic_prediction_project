# Energy Demand Forecasting: From Statistical Models to Gradient Boosting

## 📌 Context & Overview

Modern electrical grids require a precise balance between supply and demand. This project develops a decision-support tool using **Time Series Analysis** to predict hourly/daily energy demand, helping to optimize production costs and ensure grid stability.

## 🎯 Objectives

* **Load Planning:** Anticipate consumption peaks for continuous supply.
* **Cost Optimization:** Reduce overproduction and emergency energy imports.
* **Model Benchmarking:** Compare traditional statistical methods with modern Machine Learning and Deep Learning architectures.

## 🛠️ Methodology & Tech Stack

* **Language:** Python (`Pandas`, `NumPy`, `Scikit-learn`, `XGBoost`, `TensorFlow/Keras`).
* **Models Evaluated:** * **SARIMA:** For baseline linear statistical forecasting.
* **LSTM (Long Short-Term Memory):** To capture deep sequential dependencies.
* **XGBoost (Extreme Gradient Boosting):** For robust non-linear regression on tabular features.
## 🚀 Key Results & Technical Insights

| Model | RMSE | Insight |
| --- | --- | --- |
| **SARIMA**| - | Limited by non-normal residuals and heteroscedasticity. |
| **LSTM** | 291.29 | Good at capturing trends but computationally expensive. |
| **XGBoost**| **254.94** | **Best Performer.** Captured peak demand more accurately. |

### 💡 The "Data Beats Algorithms" Discovery

The core technical takeaway of this project was the superiority of **XGBoost** over the LSTM architecture. By transforming the raw time series into a supervised learning task through **Temporal Feature Engineering**, the model was able to learn explicit patterns:

* **Feature Engineering:** Splitting timestamps into discrete **Day, Month, and Year** components.
* **Reasoning:** In the context of the local grid, energy demand is more heavily dictated by fixed human cycles (administrative and seasonal) than by long-term hidden memory. This simplified feature representation allowed XGBoost to outperform deep sequential models.

## 🔮 Perspectives

* **Cyclic Encoding:** Implementing Sine/Cosine transformations for time features to better represent temporal continuity.
* **Exogenous Integration:** Adding weather variables (Temperature, Humidity) which are strong drivers of cooling-related energy demand.
* **XAI (Explainable AI):** Using SHAP values to quantify the impact of each time component on consumption peaks.
