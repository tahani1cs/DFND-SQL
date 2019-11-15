select name,count(trackid)
from PlaylistTrack pt
join Playlist p
on pt.playlistid = p.playlistid
group by p.playlistid
order by count(trackid) desc
limit 10