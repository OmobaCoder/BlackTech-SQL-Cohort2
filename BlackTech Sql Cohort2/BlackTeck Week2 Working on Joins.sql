-- Week2 Sql Query

-- Drop a table called 'student' in schema 'dbo' 
-- Drop the table if it already exists IF
OBJECT_ID('[dbo].[student]', 'U') IS NOT NULL 
DROP 
  TABLE [dbo].[student] GO CREATE TABLE student (
    studentid varchar(15) not null, 
    firstname varchar (20) not null, 
    lastname varchar(20) not null, 
    emailaddress varchar(50) not null, 
    Fax varchar(10) null
  ) insert student 
VALUES 
  (
    '1', 'Timothy', 'Ikegwu', 'ikeg@gmail.com', 
    '780000'
  ) 
select 
  * 
from 
  student TRUNCATE table student 
select 
  * 
from 
  [Sales].[SalesOrderDetail] 
where 
  ProductID = 776 
  and SalesOrderID = 43659 
  or SalesOrderID = 43665 
select 
  * 
from 
  [Sales].[SalesOrderDetail] 
where 
  SalesOrderID in (43659, 43665) 
select 
  * 
from 
  [Sales].[SalesOrderDetail] 
where 
  ProductID = 776 
  and SalesOrderID = 43659 
  or SalesOrderID = 43665 
select 
  * 
from 
  [Sales].[SalesOrderDetail] 
where 
  SalesOrderID in (43659, 43665) 
select 
  * 
from 
  [Production].[Product] 
where 
  name like 'B%' 
select 
  * 
from 
  [Production].[Product] 
where 
  name like 'B[A-E]%' 
select 
  * 
from 
  [Production].[Product] 
where 
  rowguid LIKE '9C21AED2_%_%' 
SELECT 
  * 
FROM 
  [Sales].[SalesTerritory] 
WHERE 
  [CountryRegionCode] LIKE 'A_' 
SELECT 
  * 
FROM 
  [Sales].[SalesTerritory] 
WHERE 
  [group] LIKE 'E[ur]%';
SELECT 
  * 
FROM 
  [Sales].[SalesTerritory] 
WHERE 
  [group] LIKE 'E[ur]%' 
SELECT 
  * 
FROM 
  [Sales].[SalesTerritory] 
WHERE 
  name LIKE '[!DR]%';
SELECT 
  * 
FROM 
  [Sales].[SalesTerritory] 
where 
  name like '' 
select 
  count(*) 
from 
  [Sales].[SalesTerritory] 
select 
  sum(quantity), 
  productid --SafetyStockLevel , name from [Production].[ProductInventory] group by ProductID select sum(linetotal) as linetotal ,DueDate from [Purchasing].
  [PurchaseOrderDetail] 
group by 
  DueDate 
order by 
  DueDate desc 
select 
  max(duedate) as lastest, 
  min(duedate) as ealiestdate 
from 
  Purchasing.PurchaseOrderDetail 
select 
  * 
from 
  [Person].[Person] create view employeedepartment as 
select 
  a.FirstName, 
  a.LastName, 
  
  /*a.BusinessEntityID , b.DepartmentID ,*/
  c.JobTitle, 
  d.GroupName, 
  c.HireDate, 
  c.Gender, 
  c.MaritalStatus 
from 
  [Person].[Person] a 
  inner join [HumanResources].[EmployeeDepartmentHistory] b on a.BusinessEntityID = b.BusinessEntityID 
  inner join [HumanResources].[Employee] c on b.BusinessEntityID = c.BusinessEntityID 
  inner join [HumanResources].[Department] d on b.DepartmentID = d.DepartmentID 
select 
  * 
from 
  employeedepartment 
where 
  firstname + 'Terri' 
  and lastname = 'Duffy' 
select 
  a.name, 
  c.jobtitle, 
  c.[NationalIDNumber], 
  d.[FirstName], 
  d.LastName 
from 
  [HumanResources].[Department] a 
  inner join [HumanResources].[EmployeeDepartmentHistory] b on a.DepartmentID = b.DepartmentID 
  inner join [HumanResources].[Employee] c on b.BusinessEntityID = c.BusinessEntityID 
  inner join [Person].[Person] d on b.BusinessEntityID = d.BusinessEntityID
