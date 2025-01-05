SELECT 
    A.*, B.*
FROM
    dept_manager A
        CROSS JOIN
    departments b
ORDER BY A.emp_no , B.dept_no;

-- another way to write cross join
SELECT 
    A.*, B.*
FROM
    dept_manager A,
    departments b
ORDER BY A.emp_no , B.dept_no;


-- create year and month table
CREATE TABLE year (
year int);

create table month (
month varchar(40));

-- insert the values
insert into year 
value (2024),(2025);

insert into month
values ("Jan"),("Feb"),("Mar"),("Apr"),("May"),("Jun");

-- full table view
select * from year;
select * from month;

-- query for that in cross join
SELECT 
    A.*, B.*
FROM
    year A
        CROSS JOIN
    month B
ORDER BY A.year;