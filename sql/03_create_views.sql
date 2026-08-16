-- 03_create_views.sql
-- Creates analytical views used for churn dashboarding and reporting

CREATE VIEW vw_customer_churn_summary AS
SELECT
    c.customer_id,
    c.plan_type,
    c.monthly_charges,
    c.total_charges,
    c.churn_flag,
    DATEDIFF(day, c.signup_date, c.last_active_date) AS tenure_days
FROM staging_customer_data c;

CREATE VIEW vw_churn_rate_by_plan AS
SELECT
    plan_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_flag = TRUE THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churn_flag = TRUE THEN 1 ELSE 0 END) * 1.0 / COUNT(*), 4) AS churn_rate
FROM staging_customer_data
GROUP BY plan_type;

CREATE VIEW vw_revenue_at_risk AS
SELECT
    customer_id,
    plan_type,
    monthly_charges
FROM staging_customer_data
WHERE churn_flag = TRUE;
