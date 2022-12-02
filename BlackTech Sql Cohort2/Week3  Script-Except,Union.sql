select * 
from 
  [Production].[Location];

select 
  * into #test from [Production].[Location] ;

select 
  * 
from 
  #test;
  --drop table #test
  
  /* How to use transaction */
  begin tran 
update 
  #test
set 
  name = 'Tool Cribs' 
where 
  locationid = 1 
select 
  * 
from 
  #test
where 
  locationid = 1 ROLLBACK tran insert #test
  (
    locationid, name, costrate, availability, 
    modifieddate
  ) 
VALUES 
  (9, 'Test', 1.0, 2.00, '2022-11-26') 
delete from 
  #test
where 
  name = 'Tool Cribs' ;

select 
  * 
from 
  #test
union all 

select 
  * 
from 
  [Production].[Location] ;

select 
  * 
from 
  [Production].[Location] 
where 
  name like '% shop' 


  /* Update statement*/
update 
  #test 
set 
  CostRate = 2.5 
where 
  LocationID = 3 
select 
  top 10 * 
from 
  Person.PersonPhone 


  /* Demostrating case statement*/
select 
  *, 
  case 
  when PhoneNumberTypeID = 1 then 'Cellphone' 
  when PhoneNumberTypeID = 2 then 'Landline' 
  when PhoneNumberTypeID = 3 then 'Fax Number' 
  end as Phonetype 
from 
  Person.PersonPhone 

select 
  top 1 * 
from 
  [Person].[Person] 
select 
  top 1 * 
from 
  [Person].[EmailAddress] 
select 
  top 1 * 
from 
  [Person].[PersonPhone] 


  /* Demostrating inner joins*/
SELECT 
  a.title, 
  a.firstname, 
  a.lastname, 
  b.emailaddress, 
  c.phonenumber 
from 
  person.Person as a 
  inner join [Person].[EmailAddress] as b on a.BusinessEntityID = b.BusinessEntityID 
  inner join [Person].[PersonPhone] as c on b.BusinessEntityID = c.BusinessEntityID 
 
  /*Using Intersect*/
Select 
  [BusinessEntityID] 
from 
  [Person].[Person] 
intersect 
select 
  [BusinessEntityID] 
from 
  [Person].[EmailAddress] 


  /*Using like , > < operator */
select 
  * 
from 
  #test 
where 
  name like 'Paint %' 
  or (
    CostRate > 20 
    and Availability < 90
  ) 


  /*Using except*/
select 
  BusinessEntityID 
from 
  [Person].[BusinessEntity] 
except 
select 
  BusinessEntityID 
from 
  [Person].[BusinessEntityAddress]
