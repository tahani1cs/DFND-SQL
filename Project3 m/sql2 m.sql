select i.invoiceid,count(invoicelineid)
from Invoice as i
join InvoiceLine as il
on i.invoiceid = il.invoiceid
group by i.invoiceid
order by count(invoicelineid) desc
limit 10