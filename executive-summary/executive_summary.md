# Executive Summary

## Project Overview
This project analyzes telecom customer churn to identify key drivers of customer attrition, high-risk segments, and revenue impact using Power BI, DAX measures, and structured data modeling.

## Key Objectives
- Understand customer demographics and service usage patterns linked to churn
- Identify top-performing vs. high-risk contract types, internet service types, and payment methods
- Segment customers by churn status and tenure for targeted retention efforts
- Visualize insights through an interactive dashboard with drill-down filtering capability

## Methodology
Raw telecom customer data (6,418 records) was modeled in Power BI using custom DAX measures (Total Customers, Churned Customers, Churn Rate, Revenue at Risk). Visuals were built across a structured three-row layout — KPI summary cards, trend/comparison charts, and detailed drill-down views — supported by six interactive slicers (Contract, Internet_Type, Payment_Method, State, Customer_Status, and a Tenure_in_Months range filter) to enable dynamic segmentation.

## Key Findings
- Month-to-Month contract customers show a significantly higher churn rate than One Year or Two Year contract holders, indicating contract length is a strong retention predictor.
- Fiber Optic internet customers churn at a higher rate than Cable or DSL customers, suggesting service quality or pricing concerns.
- The leading churn reasons are competitor-related (better offers, devices, and pricing), pointing to competitive pressure rather than internal service failures as the primary attrition driver.
- Overall churn rate stands at 26.99%, representing roughly $3M in revenue at risk across the customer base.

## Recommendations
- Prioritize retention incentives (loyalty pricing, contract upgrade offers) for Month-to-Month customers, as they represent the highest-risk segment.
- Investigate Fiber Optic service quality and pricing competitiveness to reduce churn among this customer group.
- Develop competitive counter-offers or loyalty programs targeting customers citing competitor pricing/devices as their churn reason.
- Use the interactive dashboard filters (Contract, Internet_Type, Tenure, etc.) to continuously monitor at-risk segments and measure the effectiveness of retention campaigns over time.
