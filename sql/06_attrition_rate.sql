-- =====================================================
-- ATTRITION RATE
-- File: 06_attrition_rate.sql
--
-- Purpose:
-- Calculates the overall attrition rate using the
-- cleaned employee attrition dataset.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Result:
-- attrition_rate ≈ 0.161 (16.1%)
--
-- =====================================================

SELECT
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`;

