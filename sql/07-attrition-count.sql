-- ATTRITION COUNT
-- Calculates the total number of employees who left the company

SELECT 
    SUM(attrition_flag) AS attrition_count
FROM 
    `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
