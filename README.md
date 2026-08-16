# Churn Analysis

A data analytics project focused on identifying customer churn drivers, quantifying revenue at risk, and delivering actionable insights through SQL data pipelines and a Power BI dashboard.

## Project Structure

```
churn-analysis/
│
├── README.md
│
├── data/
│   └── customer_data.csv & prod_data.csv
│
├── sql/
│   ├── 01_staging_table.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_create_views.sql
│
├── powerbi/
│   └── churn_dashboard.pbix
│
└── executive-summary/
    └── executive_summary.md
```

## Folder Overview

- **data/** - Raw customer and product data used for the analysis
- **sql/** - SQL scripts for staging, cleaning, and creating analytical views
- **powerbi/** - Power BI dashboard file for visualizing churn metrics
- **executive-summary/** - High-level summary of findings and recommendations

## Workflow

1. Load raw data into `data/`
2. Run SQL scripts in order (`01` → `02` → `03`) to stage, clean, and create views
3. Connect Power BI dashboard to the cleaned views
4. Review findings in the executive summary
