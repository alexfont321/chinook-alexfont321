/*
select 
c.CustomerId,
c.FirstName,
c.LastName
from Customer c
where c.Country = "Brazil"
;
*/ 

select 
c.FirstName,
c.LastName,
i.InvoiceId,
i.InvoiceDate,
i.BillingCountry
from Customer c 
join Invoice i on c.CustomerId = i.CustomerId
where c.Country = "Brazil"
;


select * from Employee e where e.Title = "Sales Support Agent";
