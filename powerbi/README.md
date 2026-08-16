# Power BI Dashboard

This folder contains the Power BI dashboard used to visualize customer churn metrics.

## Files

- **Churn Dashboard.pbix** — Interactive Power BI report connected to the cleaned SQL views in `sql/03_create_views.sql`.
- **Screenshot.png** — Static preview of the dashboard (also embedded in the root README).

## Custom DAX Measures

- Total Customers
- Churned Customers
- Churn Rate
- Revenue at Risk

## Dashboard Layout

The report uses a three-row layout:

1. **KPI summary cards** — Total Customers, Churned Customers, Churn Rate, Revenue at Risk
2. **Trend/comparison charts** — Churn Rate by Contract, Churned Customers by Tenure, Churn Rate by Internet Type
3. **Detailed drill-down views** — Top Churn Reasons and a customer-level detail table

## Interactive Filters

Six slicers enable dynamic segmentation: Contract, Internet_Type, Payment_Method, State, Customer_Status, and a Tenure_in_Months range filter.
