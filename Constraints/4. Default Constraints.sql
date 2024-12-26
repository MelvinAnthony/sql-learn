 CREATE TABLE sales.Customer(
	Customer_ID INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Segment VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100),
    no_of_complaints INT DEFAULT 0,
    -- PRIMARY KEY(Customer_ID),
    UNIQUE KEY(Email)  
);


-- using add DEFAULT
ALTER TABLE sales.customer
ALTER no_of_complaints SET DEFAULT 0;

-- using DROP DEFAULT
ALTER TABLE sales.customer
ALTER no_of_complaints DROP DEFAULT;

SELECT * FROM sales.customer;

-- insert the values
INSERT INTO sales.customer(Customer_ID,Customer_name,Segment,City,Email)
VALUES (101,'Melvin','Data Science','Chennai','me@gmail.com');



-- Drop the table.
DROP TABLE sales.customer;