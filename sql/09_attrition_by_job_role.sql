-- =====================================================
-- ATTRITION RATE BY JOB ROLE
-- File: 09_attrition_by_job_role.sql
--
-- Purpose:
-- Calculates attrition rate by job role using the cleaned dataset.
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
  JobRole,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY JobRole
ORDER BY attrition_rate DESC;
