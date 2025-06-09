
-- Sales Trend Analysis Using Aggregations
-- Table: orders (order_id, order_date, amount, product_id)

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
