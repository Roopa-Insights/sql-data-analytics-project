/*
===============================================================================
03 Date Range Exploration
===============================================================================
Purpose:
    - To determine the time period covered by the sales data.
    - To identify the first and last order dates.
    - To understand the age range of customers.

Tables Used:
    - gold.fact_sales
    - gold.dim_customers

SQL Functions Used:
    - MIN()
    - MAX()
    - DATEDIFF()
    - GETDATE()

===============================================================================
*/

-- Determine the first and last order date and the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
