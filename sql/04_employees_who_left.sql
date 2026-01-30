-- =====================================================
-- EMPLOYEES WHO LEFT
-- File: 04_employees_who_left.sql
--
-- Purpose:
-- Calculates the number of employees who left the company
-- based on the attrition_flag in the cleaned dataset.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Result:
-- employees_who_left = 237
--
-- =====================================================

SELECT
  COUNT(*) AS employees_who_left
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
WHERE attrition_flag = 1;

