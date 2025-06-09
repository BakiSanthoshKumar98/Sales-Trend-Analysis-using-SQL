# Sales-Trend-Analysis-using-SQL

# 📈 Task 6: Sales Trend Analysis Using Aggregations

Analyze monthly revenue and order volume from online sales using SQL.

## 🧾 Dataset
- **File**: `online_sales_orders.csv`
- **Columns**:
  - `order_id`: Unique ID for each order
  - `order_date`: Date of order placement
  - `amount`: Order value
  - `product_id`: Product identifier

## 🎯 Objective
Analyze trends in monthly **revenue** and **order volume** using SQL aggregation.

## 🛠️ Tools
- SQLite / MySQL / PostgreSQL
- SQL (basic to intermediate)

## 📜 SQL Script Overview

```sql
SELECT
    STRFTIME('%Y-%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    orders
GROUP BY
    month
ORDER BY
    month ASC;
✅ Replace STRFTIME with DATE_FORMAT(order_date, '%Y-%m') in MySQL
✅ Use TO_CHAR(order_date, 'YYYY-MM') in PostgreSQL

📦 Files Included
File	Description
online_sales_orders.csv	Sample dataset
sales_trend_analysis.sql	SQL query for trend analysis
README.md	Project documentation

📊 Sample Output
Month	Total Revenue	Order Volume
2024-01	425.00	2
2024-02	520.00	2
2024-03	910.00	3
2024-04	180.00	1

🧠 Insights
March had the highest sales volume and revenue.

Sales volume grew consistently in Q1 before dipping in April.

👤 Author
Santhosh Kumar B. — Data Analyst | SQL Enthusiast | Trend Spotter
