use employees;

SELECT DATE_FORMAT('2000-10-26', '%d %M %Y');

SELECT 
    *
FROM
    salaries;
 
 -- date_fromat function
SELECT
	*,
    DATE_FORMAT(from_date, '%d %M %Y') as date_fromat
FROM
    salaries;
    
-- date and time format
SELECT DATE_FORMAT('2000-10-26 23:30:42', '%a, %d-%m-%y %r') as date_time_fromat;