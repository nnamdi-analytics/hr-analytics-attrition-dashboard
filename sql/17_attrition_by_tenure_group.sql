-- =====================================================
-- ATTRITION RATE BY TENURE GROUP (Years at Company)
-- File: 17_attrition_by_tenure_group.sql
--
-- Purpose:
-- Calculates attrition rate across tenure groups to identify
-- early-tenure turnover patterns.
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Tenure Groups (YearsAtCompany):
-- 0–1 years
-- 2–3 years
-- 4–6 years
-- 7–10 years
-- 11+ years
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- =====================================================

SELECT
  CASE
    WHEN YearsAtCompany <= 1 THEN '0–1 years'
    WHEN YearsAtCompany BETWEEN 2 AND 3 THEN '2–3 years'
    WHEN YearsAtCompany BETWEEN 4 AND 6 THEN '4–6 years'
    WHEN YearsAtCompany BETWEEN 7 AND 10 THEN '7–10 years'
    ELSE '11+ years'
  END AS tenure_group,
  COUNT(*) AS total_employees,
  SUM(attrition_flag) AS employees_who_left,
  ROUND(SUM(attrition_flag) / COUNT(*), 4) AS attrition_rate
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY tenure_group
ORDER BY attrition_rate DESC;
