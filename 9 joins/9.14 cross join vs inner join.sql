-- Cross Join
SELECT 
    A.*, B.*
FROM
    dept_manager A
        CROSS JOIN
    departments b
WHERE
    A.dept_no = B.dept_no
ORDER BY A.emp_no , B.dept_no;

-- Inner Join
SELECT 
    A.*, B.*
FROM
    dept_manager A
        CROSS JOIN
    departments b ON A.dept_no = B.dept_no
ORDER BY A.emp_no , B.dept_no;