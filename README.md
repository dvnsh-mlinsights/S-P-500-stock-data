# S&P 500 Market Analysis & Quantitative Indicators

## Project Overview
This repository contains a collection of SQL scripts designed to analyse daily stock market data for the S&P 500. The project demonstrates the ability to extract actionable financial insights, calculate key quantitative indicators, and handle large-scale time-series data to evaluate market behaviour.

## The Queries
**1. The Volatility Breakout (`01_volatility_breakout.sql`)**
* **Objective:** Find the top 10 individual trading days where a stock experienced the most extreme intraday volatility.
* **Methodology:** Calculates the percentage difference between the daily high and low prices, filtering strictly for days where the trading volume exceeded the stock's historical average volume.

**2. Moving Average Crossover (`02_moving_average_crossover.sql`)**
* **Objective:** Calculate a rolling 50-day moving average for specific equities (e.g., AAPL).
* **Methodology:** Utilises SQL Window Functions to track historical price trends and smooth out daily price fluctuations.

**3. Market Cap & Liquidity Proxy (`03_market_cap_proxy.sql`)**
* **Objective:** Identify the top 5 most liquid stocks in the S&P 500 across a 5-year period.
* **Methodology:** Uses `close * volume` as a rough proxy for daily dollar volume traded, grouping the time-series data by ticker to find consistently high-liquidity assets.

## Technical Skills Demonstrated
* **Language:** SQL 
* **Techniques:** Common Table Expressions (CTEs), Window Functions, Aggregations, Time-Series Data Filtering, Multi-table Joins.
* **Domain Knowledge:** Equity Markets, Volatility Measurement, Liquidity Analysis.