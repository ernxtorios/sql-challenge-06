USE testing;

DROP TABLE IF EXISTS employees;

IF OBJECT_ID(N'dbo.employees', N'U') IS NULL
BEGIN
	CREATE TABLE employees (
		ID INT,
		FirstName VARCHAR(40),
		LastName VARCHAR(40),
		ReportsTo VARCHAR(80),
		Position VARCHAR(60),
		Age INT)
END;