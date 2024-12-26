USE employees;

-- Select the specific column
SELECT 
    first_name, last_name, gender, hire_date
FROM
    employees
WHERE
    gender = 'M'
        AND hire_date > '1995-01-01'
        AND first_name = 'Mayumi';
    