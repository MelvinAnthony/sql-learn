USE employees;
-- AVG function
SELECT 
    AVG(salary) as Average_Salary
FROM
    salaries; 
    
-- using case sample

SELECT 
    emp_no, AVG(Salary) AS avg_salary
FROM
    salaries
WHERE
    emp_no != 43624
GROUP BY emp_no
ORDER BY avg_salary DESC;