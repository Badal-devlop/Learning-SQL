--learning to use WHERE
use SalesDB

select 
	CustomerID,
	LastName
from Customers
where Score != 750 AND Country = 'Germany';
--The select clause, selects onnly 2 columns
--From clause decides the Table, or Data from where we get the info
--Where clause adds the condition for selecting the Data.