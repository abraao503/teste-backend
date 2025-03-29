CREATE VIEW monthly_summary AS
SELECT 
    account_id,
    -- EXTRACT(MONTH FROM transaction_date) AS month, (for postgres)
    strftime('%m', transaction_date) AS month, -- (for sqlite)
    SUM(amount) AS total_amount
FROM
    transactions
GROUP BY
    account_id,
    month;

SELECT DISTINCT 
    account_id 
FROM 
    monthly_summary 
WHERE 
    total_amount > 10000;