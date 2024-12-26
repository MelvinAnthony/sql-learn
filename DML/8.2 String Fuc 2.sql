drop table if exists demo;
CREATE TABLE demo (
    name VARCHAR(20)
);

insert into demo value ("   melvin   "),("Raj");

SELECT 
    *
FROM
    demo;

SELECT 
    LENGTH(name) AS length_
FROM
    demo;
-- using LTRIM frunction
SELECT 
    LTRIM(name) AS Left_trim, LENGTH(name) AS Length_name
FROM
    demo;
    
-- using RTRIM frunction
SELECT 
    RTRIM(name) AS Left_trim, LENGTH(name) AS Length_name
FROM
    demo;
    
insert into demo value ("   Anthony Arulandu   ");
-- TRIM function
SELECT 
    TRIM(name) AS trim_string
FROM
    demo;
    
-- REPLACE Function
SELECT name,
    REPLACE(name,
        'Anthony',
        'Melvin') AS Replace_String
FROM
    demo;
    

-- SUBSTRING
SELECT 
    name, SUBSTRING(name, 1, 5) AS substring_name
FROM
    demo;