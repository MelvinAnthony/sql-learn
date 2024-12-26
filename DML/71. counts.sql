USE employees;

-- using COUNT function Aggeraction
SELECT 
    -- COUNT(*)
    COUNT(first_name)
FROM
    employees;
   
-- using DISTINCT in COUNT function
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
-- using GROUP BY frinction bcz all the 
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name;
