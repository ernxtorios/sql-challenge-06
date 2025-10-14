USE testing;

INSERT INTO employees (ID, FirstName, LastName, ReportsTo, Position, Age) VALUES
(1, 'Daniel', 'Smith', 'Bob Boss', 'Engineer', 25),
(2, 'Mike', 'White', 'Bob Boss', 'Contractor', 22),
(3, 'Jenny', 'Richards', NULL, 'CEO', 45),
(4, 'Robert', 'Black', 'Daniel Smith', 'Sales', 22),
(5, 'Noah', 'Fritz', 'Jenny Richards', 'Assistant', 30),
(6, 'David', 'S', 'Jenny Richardas', 'Director', 32),
(7, 'Ashley', 'Wells', 'David S', 'Assistant', 25),
(8, 'Ashley', 'Johnson', NULL, 'Intern', 25);