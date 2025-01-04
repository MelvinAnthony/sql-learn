CREATE TABLE Marketting(
	Month char(4),
    Year int,
    MarkettingSpend INT
);

CREATE TABLE Revenue(
	Month char(4),
    Year int,
    Revenue INT
);

INSERT INTO Marketting
values ("Jan", 2020, 20000),
("Jan", 2021, 10000),
("Feb",2020,30000),
("Feb", 2021, 40000);

INSERT INTO Revenue
values ("Jan", 2020, 30000),
("Jan", 2021, 15000),
("Feb",2020,20000),
("Feb", 2021, 50000);

select * from marketting;
select * from revenue;

-- using joins match the table with two tables
SELECT 
    M.Month, M.Year, M.MarkettingSpend, R.Revenue
FROM
    marketting M
        JOIN
    revenue R ON M.Month = R.Month AND M.Year = R.Year;