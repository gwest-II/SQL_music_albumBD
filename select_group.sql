select title, count(performer_id)  from stylesperformer sp
join styles s on sp.styles_id = s.id
group by title
order by count desc;

select name, count(name_track) k from tracks t
join album a on t.album_id = a.id 
where year_release between 2019 and 2020
group by name;

select name, avg(time_track) from tracks t 
join album a on t.album_id = a.id
group by name
order by avg;

select distinct p.name from performer p 
join albumperformer ap on p.id = ap.performer_id
join album a on a.id = ap.album_id
where a.id not in (select id from album a
where a.year_release=2020)

select c.name from collections c 
join trackscollections tc on c.id = tc.collections_id 
join tracks t on t.id = tc.tracks_id 
join album on album.id = t.album_id 
join albumperformer ap on ap.album_id = album.id
join performer p on p.id = ap.performer_id
where p.name = 'Muse'
group by c.name

select a.name from album a
join albumperformer a2 on a2.album_id = a.id
join performer p on p.id = a2.performer_id 
join stylesperformer s on s.performer_id = p.id
group by a.name
having count(styles_id)>1

select name_track from tracks t
left join trackscollections t2 on t2.tracks_id=t.id
where tracks_id is null

select p.name from performer p 
join albumperformer a2 on p.id = a2.performer_id 
join album a on a.id = a2.album_id 
join tracks t on t.album_id  = a.id 
where time_track in (select min(time_track)from tracks)

select a.name, count(t.id) from album a 
join tracks t on t.album_id = a.id
group by a.name
having count(t.id) in (select count(a.id) c from album a
join tracks t on t.album_id=a.id
group by a.name
order by count(t.id)
limit 1)

