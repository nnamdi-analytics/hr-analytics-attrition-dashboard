-- =====================================================
-- ATTRITION COUNT: LEFT VS STAYED
-- File: 07_attrition_count_left_vs_stayed.sql
--
-- Purpose:
-- Returns employee counts for Left vs Stayed using the
-- cleaned dataset (matches the Looker Studio bar chart).
--
-- attrition_flag:
-- 1 = Left
-- 0 = Stayed
--
-- Source Table:
-- hr_analytics.employee_attrition_clean
--
-- Expected Results:
-- Left   = 237
-- Stayed = 1233
--
-- =====================================================

SELECT
  CASE
    WHEN attrition_flag = 1 THEN 'Left'
    ELSE 'Stayed'
  END AS attrition_status,
  COUNT(*) AS employee_count
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean`
GROUP BY attrition_status
ORDER BY employee_count DESC;

