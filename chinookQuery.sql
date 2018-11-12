/*
select 
c.CustomerId,
c.FirstName,
c.LastName,
c.Country
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


select distinct
i.BillingCountry
from Invoice i 
;

select 
i.InvoiceId,
i.Total,
i.BillingAddress,
i.CustomerId,
e.FirstName ||" "|| e.LastName as FullName
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
join Employee e on e.EmployeeId = c.SupportRepId
order by FullName
;
