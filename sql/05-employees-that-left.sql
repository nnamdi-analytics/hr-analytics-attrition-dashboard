-- EMPLOYEES THAT LEFT
-- Calculates the total number of employees who left the company

SELECT 
    SUM(attrition_flag) AS employees_that_left
FROM 
    `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
