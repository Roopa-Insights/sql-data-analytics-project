# Data Analytics SQL Project

This project focuses on analyzing sales data using SQL Server.

The project covers **Exploratory Data Analysis (EDA)** and **Advanced Analytics** to understand the data, find business patterns, compare performance, segment customers and products, and create analytical reports.

---

## 📌 Project Overview

The analysis is performed using the **Gold Layer** of the data warehouse.

Main tables used:

- `gold.fact_sales`
- `gold.dim_customers`
- `gold.dim_products`

The project is divided into two sections:

### Exploratory Data Analysis (EDA)

Scripts **01–06** focus on understanding and exploring the data.

### Advanced Analytics

Scripts **07–13** focus on deeper analysis, trends, performance, segmentation, and reporting.

---

## 🗺️ Project Roadmap

![Data Analytics Project Roadmap](Project%20Roadmap.png)

---

# 🔍 Exploratory Data Analysis

## 01. Database Exploration

This step explores the structure of the database.

It checks:

- Available tables
- Table schemas
- Columns
- Data types
- NULL information

### SQL Concepts Used

- `INFORMATION_SCHEMA.TABLES`
- `INFORMATION_SCHEMA.COLUMNS`
- `SELECT`
- `WHERE`

---

## 02. Dimensions Exploration

This step explores important information from the dimension tables.

It looks at:

- Customer countries
- Product categories
- Product subcategories
- Product names

### SQL Concepts Used

- `DISTINCT`
- `ORDER BY`

---

## 03. Date Range Exploration

This step checks the time period covered by the data.

It identifies:

- First order date
- Last order date
- Order period in months
- Oldest customer
- Youngest customer

### SQL Functions Used

- `MIN()`
- `MAX()`
- `DATEDIFF()`
- `GETDATE()`

---

## 04. Measures Exploration

This step calculates the main business metrics.

It includes:

- Total sales
- Total quantity
- Average price
- Total orders
- Total products
- Total customers
- Customers who placed orders

### SQL Functions Used

- `SUM()`
- `COUNT()`
- `COUNT(DISTINCT)`
- `AVG()`
- `UNION ALL`

---

## 05. Magnitude Analysis

This analysis compares business values across different groups.

It includes:

- Customers by country
- Customers by gender
- Products by category
- Average cost by category
- Revenue by category
- Revenue by customer
- Quantity sold by country

### SQL Concepts Used

- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `AVG()`
- `LEFT JOIN`

---

## 06. Ranking Analysis

This analysis identifies top and low performers.

It includes:

- Top 5 products by revenue
- Bottom 5 products by revenue
- Top 10 customers by revenue
- Customers with the fewest orders

### SQL Concepts Used

- `TOP`
- `RANK()`
- `GROUP BY`
- `ORDER BY`
- `LEFT JOIN`

---

# 📊 Advanced Analytics

## 07. Change-Over-Time Analysis

This analysis looks at how business performance changes over time.

It includes:

- Monthly sales
- Monthly customers
- Monthly quantity sold

### SQL Functions Used

- `YEAR()`
- `MONTH()`
- `DATETRUNC()`
- `FORMAT()`
- `SUM()`
- `COUNT()`

---

## 08. Cumulative Analysis

This analysis tracks business performance over time.

It calculates:

- Sales by year
- Running total sales
- Moving average price

### SQL Concepts Used

- `SUM() OVER()`
- `AVG() OVER()`
- `DATETRUNC()`

---

## 09. Performance Analysis

This analysis compares product performance across years.

It looks at:

- Current year sales
- Average sales
- Difference from average
- Previous year sales
- Year-over-year difference
- Increase or decrease

### SQL Concepts Used

- CTE
- `AVG() OVER()`
- `LAG()`
- `CASE`
- `GROUP BY`

---

## 10. Data Segmentation

This analysis divides products and customers into meaningful groups.

### Product Segments

Products are grouped based on cost:

- Below 100
- 100–500
- 500–1000
- Above 1000

### Customer Segments

Customers are grouped based on spending and lifespan:

- VIP
- Regular
- New

### SQL Concepts Used

- `CASE`
- CTE
- `SUM()`
- `COUNT()`
- `MIN()`
- `MAX()`
- `DATEDIFF()`
- `GROUP BY`

---

## 11. Part-to-Whole Analysis

This analysis shows how much each category contributes to total sales.

It calculates:

- Category sales
- Overall sales
- Percentage of total sales

### SQL Concepts Used

- `SUM()`
- `SUM() OVER()`
- `ROUND()`
- `CAST()`
- CTE

---

## 12. Customer Report

A reusable customer report is created as a SQL Server view:

`gold.report_customers`

The report includes:

- Customer name
- Age
- Age group
- Customer segment
- Last order date
- Recency
- Total orders
- Total sales
- Total quantity
- Total products
- Customer lifespan
- Average order value
- Average monthly spend

### SQL Concepts Used

- CTE
- `JOIN`
- `CASE`
- Aggregate Functions
- `DATEDIFF()`
- SQL Server `VIEW`

---

## 13. Product Report

A reusable product report is created as a SQL Server view:

`gold.report_products`

The report includes:

- Product name
- Category
- Subcategory
- Cost
- Last sale date
- Recency
- Product segment
- Product lifespan
- Total orders
- Total sales
- Total quantity
- Total customers
- Average selling price
- Average order revenue
- Average monthly revenue

### Product Segments

- High-Performer
- Mid-Range
- Low-Performer

### SQL Concepts Used

- CTE
- `JOIN`
- `CASE`
- Aggregate Functions
- `DATEDIFF()`
- SQL Server `VIEW`

---

# 🧠 SQL Concepts Covered

This project covers practical SQL Server concepts such as:

- Filtering
- `DISTINCT`
- `GROUP BY`
- `ORDER BY`
- `TOP`
- Aggregate Functions
- `JOIN`
- `LEFT JOIN`
- `CASE`
- CTEs
- Window Functions
- `RANK()`
- `LAG()`
- `SUM() OVER()`
- `AVG() OVER()`
- Date Functions
- `DATEDIFF()`
- `DATETRUNC()`
- `FORMAT()`
- SQL Server Views

---

# 🤖 AI Assistance

AI tools were used as a support tool during this project.

They were mainly used to:

- Help with SQL syntax for some advanced queries
- Suggest different ways to write queries
- Help review and improve queries
- Explain SQL concepts when needed

The business logic and analysis approach were reviewed and understood before using the queries.

The purpose of using AI was to support learning and improve productivity, not to replace understanding of the SQL concepts.

---

# 💼 Business Questions

This project helps answer questions such as:

- What is the total sales generated?
- How many customers and products are there?
- Which countries have the most customers?
- Which categories generate the most revenue?
- Which products are the top performers?
- Which products have the lowest revenue?
- Which customers generate the most revenue?
- How do sales change over time?
- Which products are improving or declining?
- Which customers are VIP, Regular, or New?
- How much does each category contribute to total sales?
- What are the key metrics for each customer?
- What are the key metrics for each product?

---

# 📁 Project Structure

```text
Data-Analytics-SQL-Project/
│
├── README.md
├── Project Roadmap.png
│
└── scripts/
    │
    ├── 01_database_exploration.sql
    ├── 02_dimensions_exploration.sql
    ├── 03_date_range_exploration.sql
    ├── 04_measures_exploration.sql
    ├── 05_magnitude_analysis.sql
    ├── 06_ranking_analysis.sql
    │
    ├── 07_change_over_time_analysis.sql
    ├── 08_cumulative_analysis.sql
    ├── 09_performance_analysis.sql
    ├── 10_data_segmentation.sql
    ├── 11_part_to_whole_analysis.sql
    ├── 12_customer_report.sql
    └── 13_product_report.sql
