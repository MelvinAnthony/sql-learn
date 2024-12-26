 CREATE TABLE sales.Customer(
	Customer_ID INT,
    Customer_name VARCHAR(100) NOT NULL,
    Segment VARCHAR(50),
    City VARCHAR(50),
    Email VARCHAR(100),
    no_of_complaints INT DEFAULT 0,
    PRIMARY KEY(Customer_ID),
    UNIQUE KEY(Email)  
);

-- using ALTER TABLE TO MAKE AS NULL
ALTER TABLE sales.customer
MODIFY Customer_name VARCHAR(100) NULL;

-- using ALTER TABLE TO MAKE AS NOT NULL
ALTER TABLE sales.customer
MODIFY Customer_name VARCHAR(100) NOT NULL;



-- Drop the table.
DROP TABLE sales.customer;