select * from employees;
select * from dept_manager;
select * from departments;

-- query for multiple columns
SELECT 
    A.first_name, A.last_name, B.from_date, C.dept_name
FROM
    employees A
        LEFT JOIN
    dept_manager B ON A.emp_no = B.emp_no
        JOIN
    departments C ON B.dept_no = C.dept_no
ORDER BY B.dept_no DESC;