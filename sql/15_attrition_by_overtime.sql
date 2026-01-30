-- =====================================================
-- ATTRITION RATE BY OVERTIME
-- File: 15_attrition_by_overtime.sql
--
-- Purpose:
-- Compares attrition rates between employees who work
-- overtime and those who do not.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- =====================================================

SELECT
  OverTime,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY OverTime
ORDER BY attrition_rate DESC;

