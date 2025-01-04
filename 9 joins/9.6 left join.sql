select * from department2 order by dept_no;
select * from dept_manager2 order by dept_no;

-- Left join query
SELECT 
    A.dept_no, A.dept_name, B.emp_no
FROM
    department2 A
        LEFT JOIN
    dept_manager2 B ON A.dept_no = B.dept_no
ORDER BY dept_no;