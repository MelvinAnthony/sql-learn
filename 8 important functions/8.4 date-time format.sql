USE employees;


SELECT 
    MINUTE('2000-10-26 23:30:42') AS minute_,
    HOUR('2000-10-26 23:30:42') AS hour_,
    SECOND('2000-10-26 23:30:42') AS second_;

SELECT MAKEDATE(2000, 26) as day_make;    -- (year,day)

SELECT MAKETIME(20, 10, 54) as time_make;  -- (hour,min,sec)

SELECT DATE('2000-10-26 23:30:42') AS date_;

SELECT 
    *
FROM
    salaries;
    
-- date add with already presented values
SELECT 
    *, DATE_ADD(from_date, INTERVAL 5 MONTH) AS Month_add  -- for sub (from_date, INTERVAL -5 MONTH)
FROM
    salaries;
    
-- date subtract with already presented values
SELECT 
    *, DATE_SUB(from_date, INTERVAL 5 MONTH) AS Month_sub
FROM
    salaries;
    
-- date differenct find
SELECT 
    *, DATEDIFF(to_date, from_date) AS date_diff
FROM
    salaries;