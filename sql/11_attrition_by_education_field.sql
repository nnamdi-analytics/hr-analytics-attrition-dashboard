-- =====================================================
-- ATTRITION RATE BY EDUCATION FIELD
-- File: 11_attrition_by_education_field.sql
--
-- Purpose:
-- Calculates attrition rate by education field using the
-- cleaned employee attrition dataset.
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
  EducationField,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY EducationField
ORDER BY attrition_rate DESC;

