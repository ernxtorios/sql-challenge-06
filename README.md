# Prácticas SQL - Laboratorio 06

## Escenario
The main table is as follows:

|   ID  |   FirstName   |   LastName    |   ReportsTo       |   Position    |   Age |
|-------|---------------|---------------|-------------------|---------------|-------|
|   1   |   Daniel      |   Smith       |   Bob Boss        |   Engineer    |   25  |
|   2   |   Mike        |   White       |   Bob Boss        |   Contractor  |   22  |
|   3   |   Jenny       |   Richards    |   null            |   CEO         |   45  |
|   4   |   Robert      |   Black       |   Daniel Smith    |   Sales       |   22  |
|   5   |   Noah        |   Fritz       |   Jenny Richards  |   Assistant   |   30  |
|   6   |   David       |   S           |   Jenny Richards  |   Director    |   32  |
|   7   |   Ashley      |   Wells       |   David S         |   Assistant   |   25  |
|   8   |   Ashley      |   Johnson     |   null            |   Intern      |   25  |

The question requires the result set of the query to return a set with the ReportTo column that contains the names of the employees that are reported to.
The count or the number of employees that have reported and the average age of these members is also required
In order to produce the required results the SELECT keyword is used to select our required columns which in this case is the ReportsTo column as well as the count column and the average age column.
These are the new columns created and added using the keyword AS given in the query. The AS keyword is used to name a new column of the table.
The count of the members are given in a new column named as Members and the average age is displayed in another new column named Average_Age.
These column names are added and displayed as shown in the below table.
Result set table:

|   ReportsTo       |   Members |   Average_Age |
|-------------------|-----------|---------------|
|   Bob Boss        |   2       |   24          |
|   Daniel Smith    |   1       |   22          |
|   David S         |   1       |   25          |
|   Jenny Richards  |   2       |   31          |

## Solución
The COUNT() and the AVG() function are the aggregate functions that give a single result after calculating the number of members that have reported and their average age respectively.
Here, the ROUND() function is used in-order to round off the decimal place of the average ages of the employees to just 0 decimal places or give it in whole numbers.
The WHERE clause is used to extract the ReportsTo column that do not consist of the null values as mentioned in the question.
The GROUP BY clause is used in order to group the columns with respect to a particular column which in this case is the ReportTo column.
The ORDER BY is used to order or arrange the names of the members in ascending order as required the question

The query that corresponds to the given is as follows:

> SELECT
>
> employee.ReportsTo,
>
> COUNT(mt.ID) as Members,
>
> ROUND(AVG(mt.Age), 0) as Average_Age
> 
> FROM employee
>
> WHERE ReportsTo IS NOT NULL
>
> GROUP BY
>
> mt.ReportsTo
>
> ORDER BY mt.ReportsTo