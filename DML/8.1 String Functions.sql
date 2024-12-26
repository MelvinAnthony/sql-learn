USE employees;

-- Using CONCAT function 
SELECT 
    CONCAT(first_name, last_name)
FROM
    employees;
    
-- Using CONCAT_WS functions

SELECT 
    CONCAT_WS('-', first_name, last_name, gender) AS Employee_Name
FROM
    employees;
    
-- Length of the string

SELECT 
    first_name, LENGTH(first_name) AS Length_String
FROM
    employees
ORDER BY Length_String DESC;

-- LEFT function
SELECT 
    LEFT(hire_date, 4)
FROM
    employees;
    
-- LOWER Function
SELECT 
    LOWER(first_name) AS Lower_name
FROM
    employees;

-- UPPER function
SELECT 
    UPPER(first_name) AS Upper_name
FROM
    employees;