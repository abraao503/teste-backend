SELECT 
    customers.id, customers.name, SUM(total) AS total_orders
FROM orders
INNER JOIN customers 
    ON orders.customer_id = customers.id
GROUP BY 
    customers.id, customers.name
ORDER BY 
    total_orders DESC;