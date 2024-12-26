USE employees;

SELECT 
    ROUND(AVG(salary), 1) AS round_salary
FROM
    salaries;