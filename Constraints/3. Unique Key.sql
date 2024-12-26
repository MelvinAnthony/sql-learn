 CREATE TABLE sales.Customer(
	Customer_ID INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Segment VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100),
    -- PRIMARY KEY(Customer_ID),
    UNIQUE KEY(Email)  
);

ALTER TABLE sales.customer
ADD UNIQUE KEY(Email);


-- drop the UNIQUE key
ALTER TABLE sales.customer
DROP INDEX Email;
