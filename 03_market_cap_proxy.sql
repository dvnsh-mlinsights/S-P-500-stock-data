SELECT 
    ticker, 
    SUM(close * volume) AS total_dollar_volume
FROM sp500_daily
GROUP BY ticker
ORDER BY total_dollar_volume DESC
LIMIT 5;