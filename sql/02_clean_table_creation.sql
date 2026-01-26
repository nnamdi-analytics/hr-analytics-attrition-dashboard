-- CLEAN TABLE CREATION
-- This query standardizes fields and creates a clean dataset for analysis

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
