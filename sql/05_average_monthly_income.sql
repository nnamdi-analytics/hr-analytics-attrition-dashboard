-- =====================================================
-- AVERAGE MONTHLY INCOME
-- File: 05_average_monthly_income.sql
--
-- Purpose:
-- Calculates the average monthly income of employees
-- from the cleaned employee attrition dataset.
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Result:
-- average_monthly_income ≈ 6503
--
-- =====================================================

SELECT
  ROUND(AVG(MonthlyIncome), 0) AS average_monthly_income
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`;

