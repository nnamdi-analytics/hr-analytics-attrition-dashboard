-- =====================================================
-- TOTAL EMPLOYEES
-- File: 03_total_employees.sql
--
-- Purpose:
-- Calculates the total number of employees in the
-- cleaned employee attrition dataset.
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Result:
-- total_employees = 1470
--
-- =====================================================

SELECT
  COUNT(*) AS total_employees
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`;

