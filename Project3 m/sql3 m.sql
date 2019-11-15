select count (t.trackid)as countTrackid, t.name
from InvoiceLine il
join invoice i
on i.invoiceid = il.invoiceid
join track t
on t.trackid =il.trackid
group by t.name
order by countTrackid desc
limit 10