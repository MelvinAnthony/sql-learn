-- Convert a string to an integer
SELECT CAST('123' AS SIGNED) AS IntegerValue;

-- Convert a string to a decimal
SELECT CAST('456.78' AS DECIMAL(10, 2)) AS DecimalValue;

-- Convert a number to a string
SELECT CAST(789 AS CHAR) AS StringValue;

-- Convert a float to an integer
SELECT CAST(1000.5 AS SIGNED) AS IntegerFromFloat;
