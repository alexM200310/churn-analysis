-- 01_staging_table.sql
-- Creates the staging table for raw customer/product churn data

CREATE TABLE staging_customer_data (
    customer_id VARCHAR(50),
    signup_date DATE,
    last_active_date DATE,
    plan_type VARCHAR(50),
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(10,2),
    churn_flag BOOLEAN
);

CREATE TABLE staging_product_data (
    product_id VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
