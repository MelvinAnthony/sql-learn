USE employees;

select * from salaries;

-- MAX function
SELECT 
    emp_no, MAX(salary) AS Max_salary
FROM
    salaries
GROUP BY emp_no;

-- MIN Function
SELECT 
    emp_no, MIN(salary) AS Max_salary
FROM
    salaries
GROUP BY emp_no;