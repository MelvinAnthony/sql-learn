USE employees;
-- SUM()
SELECT 
    SUM(salary), COUNT(salary)
FROM
    salaries;

-- Using Seniro based
SELECT 
    emp_no,
    COUNT(salary) AS salary_count,
    SUM(salary) AS Total_Salary
FROM
    salaries
GROUP BY emp_no;
