/*Question 1
We need to send emails to our customers about a campaign. */

SELECT 
   a.Title, a.FirstName, a.LastName,b.EmailAddress,  c.PhoneNumber
FROM
   [Person].[Person] a 
INNER JOIN 
    [Person].[EmailAddress] b 
ON 
a.BusinessEntityID = b.BusinessEntityID 
    
INNER JOIN
    [Person].[PersonPhone] c
ON
    b.BusinessEntityID = c.BusinessEntityID;


/*Question 2
Using the [Person].[PersonPhone] table
Classify phoneNumbertypeid 1 as Cellphone
phoneNumbertypeid 2 as Landline
phoneNumbertypeid 3 as Fax mnumber */

SELECT DISTINCT a.PhoneNumberTypeID
FROM Person.PersonPhone a;

SELECT 
    p.*,
CASE 
    WHEN phoneNumbertypeid = 1 THEN 'Cellphone'
    WHEN phoneNumbertypeid = 2 THEN 'Landline'
    ELSE 'Fax number'
END AS PhoneType

FROM
    person.PersonPhone p;


/* Using your word, and sample query, explain the difference between
1. Inner join
2. Left join
3. Right join
4. Outer join
 */

SELECT 
    a.FirstName,a.LastName,a.PersonType,b.NationalIDNumber,b.JobTitle,b.BusinessEntityID,b.MaritalStatus,b.HireDate
FROM
[Person].[Person] a
INNER JOIN [HumanResources].[Employee] b
ON a.BusinessEntityID = b.BusinessEntityID;