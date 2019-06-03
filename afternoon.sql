-- PRACTICE JOINS
--1
select * from invoice inv
join invoice_line invl on il.invoice_id = i.invoice_id
where il.unit_price > .99;

--2
select c.first_name, c.last_name, i.invoice_date, i.total
from customer as c
join invoice as i
on (c.customer_id = i.customer_id);

--3
select c.first_name, c.last_name, e.first_name as rep_first_name, e.last_name as rep_last_name
from employee e join customer c
on (c.support_rep_id = e.employee_id);

--4
select album.title, artist.name from album 
join artist on (artist.artist_id = album.artist_id);

--5
select track_id from playlist_track pt
join playlist p on pt.playlist_id = p.playlist_id
where p.name = 'Music';

--6
select t.name from track t
join playlist_track pt on t.track_id = pt.track_id
where pt.playlist_id = 5;

--7
select t.name as track, p.name as playlist from track t
join playlist_track pt on pt.track_id = t.track_id
join playlist p on p.playlist_id = pt.playlist_id;

--8
select t.name, a.title from track t
join album a on a.album_id = t.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';


-- PRACTICE NESTED QUERIES
--1
select * from invoice i
where i.invoice_id in (select invoice_id from invoice_line
                       where unit_price > .99);

--2
select * from playlist_track pt
where pt.playlist_id in
    (select playlist_id from playlist p
    where p.name = 'Music');

--3
select name from track
where track_id in
(select track_id from playlist_track
 where playlist_id = 5);

--4
select * from track
where genre_id in
(select genre_id from genre
 where name = 'Comedy');

--5
select * from track
where album_id in
(select album_id from album
 where title = 'Fireball');

--6



-- PRACTICE UPDATING ROWS
--1


--2


--3


--4


--5


--6



-- GROUP BY
--1


--2


--3



-- USE DISTINCT
--1


--2


--3



-- DELETE ROWS
--1


--2


--3


--4