-- ATTRITION RATE BY OVERTIME STATUS
-- Compares attrition between employees who work overtime and those who do not

SELECT
  OverTime,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS attrition_count,
  ROUND(
    SUM(attrition_flag) / COUNT(*) * 100,
    2
  ) AS attrition_rate_percentage
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY OverTime
ORDER BY attrition_rate_percentage DESC;
