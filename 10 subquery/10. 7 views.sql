select * from employees;
 
-- views
CREATE OR REPLACE VIEW gender_avg_salary AS
    SELECT 
        a.gender, AVG(b.salary)
    FROM
        employees a
            JOIN
        salaries b ON a.emp_no = b.emp_no
    WHERE
        a.hire_date > '2000-01-01'
    GROUP BY a.gender;

-- to display the view
SELECT 
    *
FROM
    gender_avg_salary;