SELECT 
Contract,
Tenure_Group,
Risk_Score,
COUNT(*) AS customers,
SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned
FROM telecom_churn
GROUP BY Contract, Tenure_Group, Risk_Score
ORDER BY churned DESC
LIMIT 10;