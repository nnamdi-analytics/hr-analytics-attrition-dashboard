-- =====================================================
-- ATTRITION RATE BY AGE GROUP
-- File: 10_attrition_by_age_group.sql
--
-- Purpose:
-- Calculates attrition rate across age groups using the
-- cleaned employee attrition dataset.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Age Groups:
-- Under 30
-- 30–39
-- 40–49
-- 50+
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- =====================================================

SELECT
  CASE
    WHEN Age < 30 THEN 'Under 30'
    WHEN Age BETWEEN 30 AND 39 THEN '30–39'
    WHEN Age BETWEEN 40 AND 49 THEN '40–49'
    ELSE '50+'
  END AS age_group,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY age_group
ORDER BY attrition_rate DESC;

