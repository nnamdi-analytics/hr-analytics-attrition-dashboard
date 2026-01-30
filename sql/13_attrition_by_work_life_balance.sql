-- =====================================================
-- ATTRITION RATE BY WORK-LIFE BALANCE
-- File: 13_attrition_by_work_life_balance.sql
--
-- Purpose:
-- Calculates attrition rate by work-life balance score (1–4)
-- using the cleaned employee attrition dataset.
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
  WorkLifeBalance,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance ASC;

