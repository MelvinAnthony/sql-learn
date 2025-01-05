/* average salary of female managers by departments having average salary more than 60000 */

select * from departments;
select * from dept_manager;
select * from salaries;

SELECT 
    D.dept_name, 
    D_M.from_date, 
    MAX(S.salary) AS max_salary
FROM
    departments D
    LEFT JOIN dept_manager D_M ON D.dept_no = D_M.dept_no
    LEFT JOIN salaries S ON D_M.emp_no = S.emp_no
WHERE
    S.salary > 60000
GROUP BY 
    D.dept_name, D_M.from_date
ORDER BY 
    max_salary DESC;







