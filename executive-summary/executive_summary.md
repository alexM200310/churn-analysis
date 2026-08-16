# Executive Summary: Customer Churn Analysis

## Overview
This document summarizes key findings and recommendations from the customer churn analysis project.

## Objective
Identify the primary drivers of customer churn and provide data-driven recommendations to reduce churn rate and protect recurring revenue.

## Key Findings
- Churn rate by plan type and customer segment
- Revenue at risk from high-probability churn customers
- Tenure and engagement patterns correlated with churn

## Methodology
1. Staged raw customer and product data (see `sql/01_staging_table.sql`)
2. Cleaned and standardized records (see `sql/02_data_cleaning.sql`)
3. Built analytical views for reporting (see `sql/03_create_views.sql`)
4. Visualized results in Power BI (see `powerbi/churn_dashboard.pbix`)

## Recommendations
- Target retention campaigns toward high-risk segments
- Monitor churn rate trends monthly via the Power BI dashboard
- Investigate pricing and plan structure for high-churn plan types

## Next Steps
- Expand analysis with additional customer engagement data
- Automate reporting pipeline for ongoing monitoring
