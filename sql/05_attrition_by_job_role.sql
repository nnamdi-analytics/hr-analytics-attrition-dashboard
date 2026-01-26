-- ATTRITION BY JOB ROLE
-- Calculates attrition count and attrition rate for each job role

SELECT
  JobRole,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS attrition_count,
  ROUND(
    SUM(attrition_flag) / COUNT(*) * 100,
    2
  ) AS attrition_rate_percentage
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY JobRole
ORDER BY attrition_rate_percentage DESC;
