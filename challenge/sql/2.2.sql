SELECT 
  email, COUNT(*) AS occurrence
FROM 
  users
GROUP BY 
  email
HAVING 
  occurrence > 1;