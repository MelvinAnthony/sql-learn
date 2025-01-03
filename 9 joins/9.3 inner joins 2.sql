-- display the duplicate table.
SELECT 
    *
FROM
    dept_manager2;
    
SELECT 
    *
FROM
    department2;
    
-- using inner join display the Emp_no and dept_name in joins.
SELECT 
    dept_manager2.emp_no, department2.dept_name
FROM
    department2
        INNER JOIN
    dept_manager2 ON dept_manager2.dept_no = department2.dept_no;
    
-- using allias
SELECT 
    B.emp_no, A.dept_name
FROM
    department2 AS A
        INNER JOIN
    dept_manager2 AS B ON B.dept_no = A.dept_no
WHERE
    A.dept_no = 'd006';

    

