SELECT *
from customerchurn

--churn rate by country

SELECT 
	country, 
	COUNT(customer_id) AS [total customers], 
	SUM(churn) AS [churned customers],
	ROUND(CAST(SUM(churn)AS FLOAT)/COUNT(customer_id)*100,2) AS [churn rate]
FROM customerchurn
GROUP BY country
ORDER BY [churn rate] DESC;

--churnrate by gender

SELECT 
    gender, 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS [churn rate]
FROM customerchurn
GROUP BY gender
ORDER BY [churn rate] DESC;

--churn rate by age group

SELECT 
    [age group], 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS [churn rate]
FROM 
(
SELECT 
	CASE 
		WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55 and older'
		END AS [age group],
		customer_id,
        churn
FROM customerchurn
)
AS [grouped data]

GROUP BY [age group]
ORDER BY [churn rate] DESC;

--churn by balance

SELECT 
    [balance category], 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(cast(churn as float)) * 100, 2) AS [churn rate]
FROM 
(
SELECT 
	CASE 
		WHEN balance = 0 THEN 'Zero Balance'
        WHEN balance BETWEEN 1 AND 50000 THEN 'Low Balance'
        WHEN balance BETWEEN 50001 AND 150000 THEN 'Medium Balance'
        ELSE 'High Balance'
        END AS [balance category],
		customer_id,
        churn
FROM customerchurn
)
AS [categorised data]

GROUP BY [balance category]
ORDER BY [churn rate] DESC;

--Churn by Credit Score

SELECT 
    [credit score category], 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(cast(churn as float)) * 100, 2) AS [churn rate]
FROM 
(
SELECT 
	CASE 
		WHEN credit_score < 400 THEN 'Very Poor'
        WHEN credit_score BETWEEN 400 AND 600 THEN 'Poor'
        WHEN credit_score BETWEEN 601 AND 750 THEN 'Good'
        ELSE 'Excellent'
        END AS [credit score category],
		customer_id,
        churn
FROM customerchurn
)
AS [categorised data]

GROUP BY [credit score category]
ORDER BY [churn rate] DESC;

--Churn by Product Usage

SELECT 
    products_number, 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(cast(churn as float)) * 100, 2) AS [churn rate]
FROM customerchurn
GROUP BY products_number
ORDER BY [churn rate] DESC;

--Churn by Activity status

SELECT 
    active_member, 
    COUNT(customer_id) AS [total customers], 
    SUM(churn) AS [churned customers], 
    ROUND(AVG(cast(churn AS FLOAT)) * 100, 2) AS [churn rate]
FROM customerchurn
GROUP BY active_member
ORDER BY [churn rate] DESC;



