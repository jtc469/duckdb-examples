.read data_sources.sql

WITH users_with_zero_transactions AS (
    SELECT 
    *
    FROM transactions as t 
    RIGHT JOIN users as u 
        ON t.user_id = u.user_id 
    WHERE t.user_id IS NULL
)

SELECT * FROM users_with_zero_transactions
LIMIT 10