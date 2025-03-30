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
INNER JOIN (
    SELECT 
        categories.id, SUM(sales.quantity) as total_per_category
    FROM 
        sales
    INNER JOIN products
        ON sales.product_id = products.id
    INNER JOIN categories
        ON products.category_id = categories.id
    GROUP BY
        categories.id
    HAVING total_per_category > 100
) AS category_filter ON categories.id = category_filter.id
GROUP BY 
    products.id, 
    products.name, 
    categories.id, 
    categories.name
ORDER BY total_sold DESC;