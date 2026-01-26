-- ATTRITION RATE
-- Calculates the overall percentage of employees who left the company

SELECT
  ROUND(
    SUM(attrition_flag) / COUNT(*) * 100,
    2
  ) AS attrition_rate_percentage
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`;
