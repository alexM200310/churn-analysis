-- 02_data_cleaning.sql
-- Cleans and standardizes staging data prior to analysis

UPDATE staging_customer_data
SET plan_type = TRIM(UPPER(plan_type))
WHERE plan_type IS NOT NULL;

DELETE FROM staging_customer_data
WHERE customer_id IS NULL;

UPDATE staging_customer_data
SET total_charges = 0
WHERE total_charges IS NULL;

-- Remove duplicate customer records, keeping the most recent entry
DELETE FROM staging_customer_data
WHERE customer_id IN (
    SELECT customer_id
    FROM (
        SELECT customer_id,
               ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY last_active_date DESC) AS rn
        FROM staging_customer_data
    ) t
    WHERE t.rn > 1
);
