.read data_sources.sql

WITH users_with_zero_transactions AS (
    SELECT 
        u.user_id,
        u.signup_date
    FROM transactions AS t 
    RIGHT JOIN users AS u 
        ON t.user_id = u.user_id 
    WHERE t.user_id IS NULL
)

SELECT * FROM users_with_zero_transactions
LIMIT 10