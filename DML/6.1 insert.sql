USE employees;

-- Sales 1 data
CREATE TABLE sales (
    Year INT NOT NULL,
    Country VARCHAR(20) NOT NULL,
    Sales DECIMAL(10 , 2 ) NOT NULL
);

DROP TABLE sales;

INSERT INTO sales
VALUES(2020, "INDIA", 23),
(2021, "INDIA", 19),
(2020, "CHINA", 12),
(2021, "CHINA",15);

SELECT * FROM sales;


-- sales 2 data

CREATE TABLE sales2 (
    Year INT NOT NULL,
    Country VARCHAR(20) NOT NULL,
    Sales DECIMAL(10 , 2 ) NOT NULL
);

DROP TABLE sales2;


INSERT INTO sales2
VALUES(2020, "INDIA", 23),
(2021, "INDIA", 19),
(2020, "BANGALADESH", 7),
(2021, "BANGALADESH",11);

SELECT * FROM sales2;



-- Transfer the data one table into another table using INSERT clause

INSERT INTO sales 
SELECT * FROM sales2
WHERE Country = "BANGALADESH";

SELECT * FROM sales;