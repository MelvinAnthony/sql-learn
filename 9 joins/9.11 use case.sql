/* Find the employee id, name, salary, of employee earning more than $150k */

select * from employees;
select * from salaries;

SELECT 
    distinct(B.emp_no), A.first_name, A.last_name, B.salary
FROM
    employees A
        RIGHT JOIN
    salaries B ON A.emp_no = B.emp_no
WHERE
    B.salary >= 150000
ORDER BY B.emp_no;