/*
===============================================================================
01 Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database.
    - To identify the available tables and their schemas.
    - To inspect the columns and metadata of a specific table.

Tables Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS

SQL Concepts Used:
    - INFORMATION_SCHEMA
    - SELECT
    - WHERE

===============================================================================
*/
-- Retrieve a list of all tables in the database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Retrieve all columns for a specific table (dim_customers)
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
