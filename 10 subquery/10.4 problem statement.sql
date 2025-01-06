/* find out the employee no, latest department, latest dept manager, in a single view for 10010 emp_no */

select * from dept_emp;
select * from dept_manager;

SELECT 
    D.emp_no, D.dept_no
FROM
    dept_emp AS D
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS latest_date
    FROM
        dept_emp
    GROUP BY emp_no) AS A ON D.emp_no = A.emp_no
        AND A.latest_date = D.from_date;
        
-- group the dept manager
SELECT 
    D_M.dept_no, D_M.emp_no
FROM
    dept_manager AS D_M
        JOIN
    (SELECT 
        dept_no, MAX(from_date) AS latest_date
    FROM
        dept_manager
    GROUP BY dept_no) AS B ON D_M.dept_no = B.dept_no
        AND D_M.from_date = B.latest_date;
        
-- full query
SELECT 
    D.emp_no, D.dept_no, C.emp_no as manager_no
FROM
    dept_emp AS D
        JOIN
    (SELECT 
        emp_no, MAX(from_date) AS latest_date
    FROM
        dept_emp
    GROUP BY emp_no) AS A ON D.emp_no = A.emp_no
        AND A.latest_date = D.from_date
        JOIN
    (SELECT 
        D_M.dept_no, D_M.emp_no
    FROM
        dept_manager AS D_M
    JOIN (SELECT 
        dept_no, MAX(from_date) AS latest_date
    FROM
        dept_manager
    GROUP BY dept_no) AS B ON D_M.dept_no = B.dept_no
        AND D_M.from_date = B.latest_date) AS C ON D.dept_no = C.dept_no;


