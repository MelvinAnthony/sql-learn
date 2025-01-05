select * from department2 order by dept_no;
select * from dept_manager2 order by dept_no;

-- Left join query
SELECT 
    B.dept_no, B.dept_name, A.emp_no
FROM
    dept_manager2 A
        RIGHT JOIN
    department2 B ON A.dept_no = B.dept_no
ORDER BY dept_no;