USE employees;

SELECT 
    *
FROM
    salaries;
    
    
-- use 'month' filter and 'monthname' 
SELECT 
    *,
    MONTH(from_date) AS starting_month,
    MONTHNAME(from_date) AS month_name,
    QUARTER(from_date) AS quater_num,
    WEEK(from_date) AS week_num,
    YEAR(from_date) AS year_date,
    day(from_date) as date_day,
    dayname(from_date) as day_name
FROM
    salaries;