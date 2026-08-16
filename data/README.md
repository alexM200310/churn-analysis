# Data

This folder contains the raw telecom customer data used for the churn analysis.

## Files

- **customer_data.csv** — Primary customer-level dataset (6,418 records) including demographics, account/contract details, service subscriptions, tenure, monthly charges, churn status, and churn reason.
- **prod_data.csv** — Supplementary product/service reference data used to enrich the customer dataset during staging and cleaning.

## Notes

- Data is treated as a single snapshot rather than time-series transaction history; it does not support trend-over-time analysis.
- Raw files are loaded and processed through the SQL scripts in `sql/` (staging → cleaning → views) before being connected to the Power BI dashboard.
