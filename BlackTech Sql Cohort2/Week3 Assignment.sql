/*Question1: How many entities do not have an Email Address */

SELECT 
    COUNT(*) AS Entities_Without_Email
FROM (
SELECT 
    BusinessEntityID
FROM 
    Person.BusinessEntity
EXCEPT 
SELECT BusinessEntityID
FROM 
    Person.EmailAddress

)Temp;

/*Question 2:  I want the name of the products, How much they are sold, the standard cost of manufacturer,
and calculate profit margin */
SELECT * FROM Production.ProductCostHistory;
SELECT * FROM Production.Product;

SELECT pp.Name,pp.ListPrice,pp.StandardCost, (ListPrice - pp.StandardCost ) As profit_Margin 
FROM Production.Product as pp
    JOIN 
        Production.ProductCostHistory as ch
    ON
       pp.ProductID = ch.ProductID
ORDER BY profit_Margin DESC;


/*Question3 You are required to produce a list of all names of our clients; person and store   */
SELECT * FROM person.Person
WHERE BusinessEntityID=  2170 - 295;
SELECT * FROM Sales.Store;


SELECT 
    BusinessEntityID ,
    FirstName + ' '  + LastName   AS fullName
FROM 
    Person.Person
UNION
SELECT BusinessEntityID , [Name]

FROM 
    Sales.Store
ORDER BY BusinessEntityID;