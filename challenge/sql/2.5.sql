SELECT 
    products.id, 
    products.name, 
    categories.name, 
    SUM(sales.quantity) as total_sold   
FROM sales
INNER JOIN products 
    ON sales.product_id = products.id
INNER JOIN categories 
    ON products.category_id = categories.id
GROUP BY 
    products.id, 
    products.name, 
    categories.id, 
    categories.name
HAVING categories.id IN (
    SELECT categories.id
    FROM sales
    INNER JOIN products ON sales.product_id = products.id
    INNER JOIN categories ON products.category_id = categories.id
    GROUP BY categories.id
    HAVING SUM(sales.quantity) > 100
)
ORDER BY total_sold DESC;