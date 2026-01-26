-- ATTRITION RATE BY YEARS AT THE COMPANY
-- Calculates attrition count and attrition rate for each year of tenure

SELECT 
    years_at_company,
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS attrition_count,
    ROUND(
        SUM(attrition_flag) / COUNT(*) * 100,
        2
    ) AS attrition_rate
FROM 
    `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`
GROUP BY 
    years_at_company
ORDER BY 
    years_at_company;
