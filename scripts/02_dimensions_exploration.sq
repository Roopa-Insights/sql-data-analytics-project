/*
===============================================================================
02 Dimensions Exploration
===============================================================================
Purpose:
    - To explore important descriptive information from dimension tables.
    - To identify unique customer countries.
    - To identify product categories, subcategories, and products.

Tables Used:
    - gold.dim_customers
    - gold.dim_products

SQL Functions Used:
    - DISTINCT
    - ORDER BY

===============================================================================
*/

-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;
