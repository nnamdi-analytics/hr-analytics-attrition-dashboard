-- AVERAGE MONTHLY INCOME
-- Calculates the average monthly income of all employees

SELECT 
    ROUND(AVG(monthly_income), 2) AS average_monthly_income
FROM 
    `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
