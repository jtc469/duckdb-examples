.read data_sources.sql

SELECT
    *,
    ROUND(SUM(amount) OVER (PARTITION BY currency), 2) AS currency_total
FROM transactions
ORDER BY amount DESC
LIMIT 10