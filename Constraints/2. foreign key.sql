
CREATE TABLE sales.sales(
	Order_ID INT NOT NULL, -- AUTO_INCREMENT,
	Oder_Date DATE NOT NULL,
	Customer_ID INT,
	Product_ID VARCHAR(5),
	sales DECIMAL(10,2),
	PRIMARY KEY(Order_ID)
	-- FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
 );
 
 -- Another Method To add foregin key.
 ALTER TABLE sales.sales
 ADD FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE;
 
 CREATE TABLE sales.Customer(
	Customer_ID INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Segment VARCHAR(50),
    City VARCHAR(50)    
);


-- drop the foreign key
ALTER TABLE sales.sales
DROP FOREIGN KEY sales_ibfk_1; -- check ddl. this is constraints. 


-- drop the primary key
ALTER TABLE sales.sales
DROP PRIMARY KEY;


    
    