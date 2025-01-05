/* Find the employee id, name, salary, of employee earning more than $150k */

select * from employees;
select * from salaries;

SELECT 
    A.emp_no, A.first_name, A.last_name, MAX(B.salary)
FROM
    employees A
        JOIN
    salaries B ON A.emp_no = B.emp_no
GROUP BY A.emp_no
HAVING MAX(salary) >= 150000
ORDER BY MAX(B.salary) DESC;


-- gender wise salary calculation
SELECT 
    A.gender, AVG(B.salary)
FROM
    employees A
        JOIN
    salaries B ON A.emp_no = B.emp_no
GROUP BY A.gender;