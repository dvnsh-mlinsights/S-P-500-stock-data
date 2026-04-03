Portfolio Query 1: The Volatility Breakout (01_volatility_breakout.sql)
--Write a query that finds the top 10 days with the highest intraday volatility, but only for days where the trading volume was strictly greater than that specific stock's all-time average volume.
WITH avg_volumes AS (
    SELECT ticker,AVG(volume) AS normal_volume
    FROM sp500_daily
    GROUP BY ticker
)
SELECT 
    sd.date, 
    sd.ticker, 
    ((sd.high - sd.low) / sd.low) * 100 AS volatility_pct
FROM sp500_daily sd
JOIN avg_volumes av 
  ON sd.ticker = av.ticker
WHERE sd.volume > av.normal_volume
ORDER BY volatility_pct DESC
LIMIT 10;
