-- RAW DATA AUDIT
-- Basic checks to understand the structure and quality of the raw dataset

-- 1. Count total rows
SELECT COUNT(*) AS total_rows
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;

-- 2. Count columns
SELECT COUNT(*) AS total_columns
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`
LIMIT 1;

-- 3. Check for NULL values in key fields
SELECT
  SUM(CASE WHEN EmployeeNumber IS NULL THEN 1 END) AS null_employee_number,
  SUM(CASE WHEN Age IS NULL THEN 1 END) AS null_age,
  SUM(CASE WHEN Gender IS NULL THEN 1 END) AS null_gender,
  SUM(CASE WHEN Department IS NULL THEN 1 END) AS null_department,
  SUM(CASE WHEN JobRole IS NULL THEN 1 END) AS null_jobrole,
  SUM(CASE WHEN Attrition IS NULL THEN 1 END) AS null_attrition
FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;

-- 4. Preview distinct values for categorical fields
SELECT DISTINCT Gender FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
SELECT DISTINCT Department FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
SELECT DISTINCT JobRole FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
SELECT DISTINCT Attrition FROM `nnamdi-hr-analytics-capstone.hr_analytics.employee_attrition`;
