-- CREATE DATABASE card_transactions;
USE card_transactions;

--   Total Fraudulent Transactions
SELECT COUNT(*) AS fraud_transactions FROM card_transdata WHERE fraud = 1;

-- Average Distance (Home and Last Transaction)
SELECT 
    AVG(distance_from_home) AS avg_distance_from_home,
    AVG(distance_from_last_transaction) AS avg_distance_from_last_transaction
FROM card_transdata;

--   Fraud Rate (Online vs Offline)
SELECT 
    online_order,
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_transactions,
    (SUM(fraud) / COUNT(*)) * 100 AS fraud_rate_percentage
FROM card_transdata
GROUP BY online_order;

-- Fraud Rate Based on Chip Usage
SELECT 
    used_chip,
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_transactions,
    (SUM(fraud) / COUNT(*)) * 100 AS fraud_rate_percentage
FROM card_transdata
GROUP BY used_chip;

--  Retailer Repeat Transaction Fraud Analysis
SELECT 
    repeat_retailer,
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_transactions,
    (SUM(fraud) / COUNT(*)) * 100 AS fraud_rate_percentage
FROM card_transdata
GROUP BY repeat_retailer;

-- Fraud by Distance Range
SELECT 
    CASE 
        WHEN distance_from_home < 1 THEN 'Less than 1 km'
        WHEN distance_from_home BETWEEN 1 AND 10 THEN '1-10 km'
        WHEN distance_from_home BETWEEN 10 AND 50 THEN '10-50 km'
        ELSE 'More than 50 km'
    END AS distance_range,
    COUNT(*) AS total_transactions,
    SUM(fraud) AS fraud_transactions,
    (SUM(fraud) / COUNT(*)) * 100 AS fraud_rate_percentage
FROM card_transdata
GROUP BY distance_range;





