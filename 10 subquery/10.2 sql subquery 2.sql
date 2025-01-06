select * from employees;
select * from salaries;


/* who are get above the avgerage salary */
SELECT 
    A.emp_no,
    AVG(A.salary) AS avg_salary,
    B.first_name,
    B.last_name
FROM
    salaries A
        JOIN
    employees B ON A.emp_no = B.emp_no
GROUP BY A.emp_no , B.first_name , B.last_name
HAVING AVG(A.salary) <= ALL (SELECT 
        AVG(salary)
    FROM
        salaries
    GROUP BY emp_no);
    
-- second way
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    exists (SELECT 
            *
        FROM
            dept_manager where employees.emp_no = dept_manager.emp_no ) ;