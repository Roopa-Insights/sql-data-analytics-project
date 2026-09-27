/*
===============================================================================
11 Part-to-Whole Analysis
===============================================================================
Purpose:
    - To compare each category's sales with the overall sales.
    - To calculate the percentage contribution of each category.
    - To understand which categories contribute the most to total sales.

Analysis Includes:
    - Category sales
    - Overall sales
    - Percentage of total sales

SQL Functions Used:
    - SUM()
    - SUM() OVER()
    - ROUND()
    - CAST()
    - CTE

===============================================================================
*/

-- Which categories contribute the most to overall sales?
WITH category_sales AS (
    SELECT
        p.category,
        SUM(f.sales_amount) AS total_sales
    FROM gold.fact_sales f
    LEFT JOIN gold.dim_products p
        ON p.product_key = f.product_key
    GROUP BY p.category
)
SELECT
    category,
    total_sales,
    SUM(total_sales) OVER () AS overall_sales,
    ROUND((CAST(total_sales AS FLOAT) / SUM(total_sales) OVER ()) * 100, 2) AS percentage_of_total
FROM category_sales
ORDER BY total_sales DESC;
