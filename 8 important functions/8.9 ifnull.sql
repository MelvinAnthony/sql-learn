use employees;

-- Create the table
CREATE TABLE ContactInfo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    ph_no VARCHAR(15),
    home_phone_number VARCHAR(15)
);

-- Insert 6 rows into the table
INSERT INTO ContactInfo (name, ph_no, home_phone_number)
VALUES
    ('John Doe', '1234567890', NULL),          -- Missing home phone number
    ('Alice Smith', NULL, '9876543210'),       -- Missing mobile phone number
    ('Bob Johnson', NULL, NULL),              -- Missing both phone numbers
    ('Emma Brown', '5678901234', '8765432109'),-- Both phone numbers provided
    ('Chris Lee', NULL, NULL),                -- Missing both phone numbers
    ('Diana Prince', '9876545678', NULL);     -- Missing home phone number

select * from ContactInfo;

-- with IFNULL function
SELECT 
    *, IFNULL(ph_no, home_phone_number) AS primary_number
FROM
    ContactInfo;
    
-- Another solution
SELECT 
    *, IFNULL(ph_no, ifnull(home_phone_number,"Insufficent value")) AS primary_number
FROM
    ContactInfo;

-- using coalesce function
SELECT 
    *, 
    COALESCE(ph_no, home_phone_number, 'Insufficient value') AS primary_number
FROM
    ContactInfo;

