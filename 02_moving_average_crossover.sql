
--calculate a 50-day moving average for Apple (AAPL).

WITH moving_averages AS (
    SELECT 
        date, 
        ticker, 
        close,
        AVG(close) OVER (
            PARTITION BY ticker 
            ORDER BY date ASC 
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        ) AS fifty_day_avg
    FROM sp500_daily
    WHERE ticker = 'AAPL'
)
SELECT 
    date, 
    ticker, 
    close, 
    fifty_day_avg
FROM moving_averages
WHERE close > fifty_day_avg;