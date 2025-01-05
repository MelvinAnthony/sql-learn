drop table if exists sales1;
CREATE TABLE sales1 (
    sales INT,
    month VARCHAR(15)
);

insert into sales1
values (200,"Jan"),(300,"Feb");

drop table if exists sales2;
CREATE TABLE sales2 (
    sales INT,
    month VARCHAR(15)
);

insert into sales2
values (300,"Feb"),(100,"Mar");

SELECT * FROM sales1;

SELECT * FROM sales2;

-- unio operation
SELECT 
    sales1.*
FROM
    sales1 
where month = "Jan"
UNION ALL
SELECT 
    sales2.*
FROM
    sales2
where month = "Mar";


-- create variable also
SELECT 
    'Sales1' AS table_name, sales1.*
FROM
    sales1 
UNION ALL SELECT 
    'Sales2' AS table_name, sales2.*
FROM
    sales2;