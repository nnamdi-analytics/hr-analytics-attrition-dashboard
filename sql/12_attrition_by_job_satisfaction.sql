-- =====================================================
-- ATTRITION RATE BY JOB SATISFACTION
-- File: 12_attrition_by_job_satisfaction.sql
--
-- Purpose:
-- Calculates attrition rate by job satisfaction level (1–4)
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
  JobSatisfaction,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction ASC;

