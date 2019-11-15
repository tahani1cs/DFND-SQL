select FirstName ||' '|| LastName as Name, max (total)
from Customer c
join invoice i
on i.Customerid = c.Customerid
group by c.Customerid
order by max(total) desc
limit 10