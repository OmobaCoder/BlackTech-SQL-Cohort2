/* BlackTech Sql Assignment 1 Cohort2

1. Identify the foreign key on [HumanResources].[EmployeePayHistory] table
*/

BusinessEntityID


/* 2. Show all person from the person.person table with firstname Rob or Roberto
*/
SELECT *
FROM 
    Person.Person
WHERE
    FirstName IN ('Rob', 'Roberto');

/* 3. Show the first 10 records from [sales].[SalesOrderDetail]  
*/
SELECT 
    TOP(10) *
FROM 
    sales.SalesOrderDetail;


/* 4. List the databases on your server 

 Get a list of databases 
 select * from sys.databases
 */
SELECT 
    [name] 
FROM 
    sys.databases
GO;

--  5. Count how many rows in [HumanResources].[EmployeePayHistory]

SELECT 
    COUNT(BusinessEntityID) AS 'Rows in EmployeePayHistory'
FROM
    HumanResources.EmployeePayHistory;


/* 6. Name three relational databases 

i.  MySQL
ii. Oracle Database
iii. Azure SQL Database    
*/

