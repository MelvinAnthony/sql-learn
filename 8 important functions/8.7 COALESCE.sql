SELECT COALESCE(NULL, 'Melvin', 'Anthony') AS non_null_value_first_present;

use employees;
-- Create the table
CREATE TABLE Persons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Insert 6 values into the table
INSERT INTO Persons (FirstName, MiddleName, LastName)
VALUES 
    ('John', 'A.', 'Doe'),      -- All fields populated
    ('Alice', NULL, 'Smith'),  -- No middle name
    (NULL, 'B.', 'Johnson'),   -- No first name
    (NULL, NULL, 'Brown'),     -- Only last name
    ('Emma', 'C.', NULL),      -- No last name
    (NULL, NULL, NULL);        -- All fields NULL
    
SELECT 
    *
FROM
    persons;
    
-- without COALESCE frimction
SELECT 
    *,
    CONCAT(FirstName,
            ' ',
            MiddleName,
            ' ',
            LastName) AS concat_without_COALESCE
FROM
    Persons;
    
-- with COALESCE function
SELECT 
    *,
    CONCAT(FirstName,
            ' ',
             COALESCE(MiddleName," "),
            ' ',
            LastName) AS concat_with_COALESCE
FROM
    Persons;