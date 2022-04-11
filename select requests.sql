select name, year_release 
from album
where year_release = 2018;

select name_track, time_track
FROM tracks
order by time_track desc
limit 1;

select name_track, time_track
from tracks
where time_track >=3.5;

select name 
from collections
where year_release between 2018 and 2020;

select name 
from performer
where name not like '%% %%';

select name_track 
from tracks
where name_track like '%%my%%';