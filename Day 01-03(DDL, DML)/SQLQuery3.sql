use SalesDB

select 
	CustomerID,
	Country
from Customers
--notice:no "," after contry, as it makes SQL think that...
--more columns is yet to be selected so it throws error.

