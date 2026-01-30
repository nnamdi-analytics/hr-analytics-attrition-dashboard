-- =====================================================
-- ATTRITION RATE BY DEPARTMENT
-- File: 08_attrition_by_department.sql
--
-- Purpose:
-- Calculates attrition rate by department using the cleaned dataset.
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
  Department,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY Department
ORDER BY attrition_rate DESC;

