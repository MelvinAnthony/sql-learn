-- to multiple views using join function
select * from dept_emp_latest_date;
select * from current_dept_emp;

-- using joins to query the two table
SELECT 
    a.emp_no, a.from_date, b.dept_no
FROM
    dept_emp_latest_date a
        JOIN
    current_dept_emp b ON a.emp_no = b.emp_no
        AND a.from_date = b.from_date
ORDER BY b.dept_no;