SET SQL_SAFE_UPDATES = 0;


use employees;

-- Create a duplicate table.
CREATE TABLE department2 AS SELECT * FROM
    departments;

-- display the duplicate table.
SELECT 
    *
FROM
    department2
ORDER BY dept_no;

-- delete the constraints
ALTER TABLE `dept_manager` DROP FOREIGN KEY `dept_manager_ibfk_2`;

SHOW CREATE TABLE `dept_manager`;

-- delete the perticular id in the table
DELETE FROM department2 
WHERE
    dept_no = 'd001';
    
-- change the format of the variable means change to null values
alter table department2
modify dept_no char(4);


-- check null value are present
UPDATE department2 
SET 
    dept_no = NULL
WHERE
    dept_no = 'd002';
    
-- dept_manager table also duplicate
CREATE TABLE dept_manager2 AS SELECT * FROM
    dept_manager;
    
-- change the format of the variable means change to null values
alter table dept_manager2
modify dept_no char(4);


-- check null value are present
UPDATE dept_manager2 
SET 
    dept_no = NULL
WHERE
    dept_no = 'd008';

-- display the duplicate table.
SELECT 
    *
FROM
    dept_manager2;

