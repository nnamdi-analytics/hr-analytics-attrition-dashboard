-- ATTRITION RATE BY AGE GROUP
-- Groups employees into age brackets and calculates attrition rate for each group

WITH age_groups AS (
  SELECT
    CASE
      WHEN Age < 25 THEN 'Under 25'
      WHEN Age BETWEEN 25 AND 34 THEN '25-34'
      WHEN Age BETWEEN 35 AND 44 THEN '35-44'
      WHEN Age BETWEEN 45 AND 54 THEN '45-54'
      ELSE '55+'
    END AS age_group,
    attrition_flag
  FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
)

SELECT
  age_group,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS attrition_count,
  ROUND(
    SUM(attrition_flag) / COUNT(*) * 100,
    2
  ) AS attrition_rate_percentage
FROM age_groups
GROUP BY age_group
ORDER BY attrition_rate_percentage DESC;
