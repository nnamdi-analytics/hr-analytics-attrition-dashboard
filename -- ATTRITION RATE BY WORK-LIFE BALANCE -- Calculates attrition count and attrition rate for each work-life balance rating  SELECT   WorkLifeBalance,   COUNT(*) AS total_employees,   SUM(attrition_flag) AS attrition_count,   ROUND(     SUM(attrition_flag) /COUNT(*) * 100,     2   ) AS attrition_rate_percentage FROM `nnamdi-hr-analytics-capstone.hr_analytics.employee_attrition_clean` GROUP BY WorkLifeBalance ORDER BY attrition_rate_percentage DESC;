-- ATTRITION RATE BY WORK-LIFE BALANCE
-- Calculates attrition count and attrition rate for each work-life balance rating

SELECT
  WorkLifeBalance,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS attrition_count,
  ROUND(
    SUM(attrition_flag) / COUNT(*) * 100,
    2
  ) AS attrition_rate_percentage
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY WorkLifeBalance
ORDER BY attrition_rate_percentage DESC;
