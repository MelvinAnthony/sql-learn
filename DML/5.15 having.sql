USE employees;

SELECT 
    first_name, COUNT(first_name) AS Count_First_Name
FROM
    employees
GROUP BY first_name
HAVING Count_First_Name > 200
ORDER BY Count_First_Name ASC;


 -- sales table 
SELECT 
    *
FROM
    SALARIES;

SELECT 
    emp_no, AVG(salary) AS Average_salary, MIN(from_date) AS Start_date
FROM
    SALARIES
GROUP BY emp_no
HAVING Average_salary > 80000
ORDER BY Start_date ASC;