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

SELECT 
    monthly_summary.account_id,
    month,
    total_amount 
FROM 
    monthly_summary
WHERE EXISTS (
    SELECT 1 
    FROM monthly_summary sub 
    WHERE sub.account_id = monthly_summary.account_id 
    AND sub.total_amount > 10000
);
