SELECT 
  product,
  SUM(quantity * price) AS total
FROM 
  sales
GROUP BY 
  product
ORDER BY 
  total DESC;