-- =====================================================
-- CLEAN TABLE CREATION
-- File: 02_create_employee_attrition_clean.sql
--
-- Purpose:
-- Creates a cleaned, analysis-ready employee attrition table
-- from the raw employee_attrition dataset.
--
-- Key Transformations:
-- - Converts Attrition field into numeric attrition_flag
--   (1 = Left, 0 = Stayed)
-- - Selects relevant analytical fields only
-- - Standardizes structure for downstream analysis and dashboards
--
-- Output Table:
-- hr_analytics.employee_attrition_clean
--
-- =====================================================


CREATE OR REPLACE TABLE
  `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition_clean` AS
SELECT
  EmployeeNumber,
  Age,
  Gender,
  Department,
  JobRole,
  MonthlyIncome,
  JobSatisfaction,
  WorkLifeBalance,
  OverTime,
  
  -- Convert Attrition to a numeric flag
  CASE
    WHEN LOWER(CAST(Attrition AS STRING)) IN ('yes','y','1','true') THEN 1
    ELSE 0
  END AS attrition_flag,
  
  YearsAtCompany,
  EducationField,
  MaritalStatus
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
