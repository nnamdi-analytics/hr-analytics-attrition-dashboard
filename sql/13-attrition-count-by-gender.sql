-- ATTRITION COUNT BY GENDER
-- Calculates the number of employees who left the company, grouped by gender

SELECT 
    gender,
    SUM(attrition_flag) AS attrition_count
FROM 
    `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`
GROUP BY 
    gender
ORDER BY 
    attrition_count DESC;
