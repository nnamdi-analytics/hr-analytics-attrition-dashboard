-- =====================================================
-- ATTRITION COUNT BY GENDER (Employees Who Left)
-- File: 16_attrition_count_by_gender.sql
--
-- Purpose:
-- Counts employees who left the company, grouped by gender.
-- This matches the Looker Studio chart filtered to attrition_flag = 1.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Results:
-- Male   = 150
-- Female = 87
--
-- =====================================================

SELECT
  Gender,
  COUNT(*) AS employees_who_left
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
WHERE attrition_flag = 1
GROUP BY Gender
ORDER BY employees_who_left DESC;
