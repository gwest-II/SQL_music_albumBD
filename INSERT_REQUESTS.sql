INSERT_REQUESTS



insert into styles (title) values ('Rock');
insert into styles (title) values ('Reggae');
insert into styles (title) values ('Pop');
insert into styles (title) values ('Blues');
insert into styles (title) values ('hip-hop');


insert into performer (name) 
values ('Bob Marley'),
('The Wailers'),
('Madonna'),
('The Beatles'),
('Muse'),
('Coldplay'),
('Ray Charles'),
('Eminem'),
('Gorilaz');

insert into StylesPerformer (styles_id, performer_id) 
values (2, 1),
(2, 2),
(3, 3),
(3, 4),
(1, 5),
(1, 6),
(4, 7),
(5, 8),
(5, 9);

insert into album (name, year_release)
values('Nesta', 2021),
('Legend',1984),
('Frozen',2021),
('Abbey road', 1969),
('Simulation Theory', 2018),
('My universe', 2021),
('100', 2012),
('Music to be murdered by', 2020),
('Gorillaz', 2006);

insert into albumperformer  (album_id, performer_id) 
values (1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

insert into tracks (name_track, time_track, album_id)
values('One cup of coffee', 2.3, 1),
('is this love', 3.52, 2),
('frozen', 2.00, 3),
('because', 2.45, 4),
('something',3.02, 4),
('the end', 2.21, 4),
('Break to me', 3.37, 5),
('pressure', 3.55, 5),
('my universe',3.46, 6),
('me Bonnie', 2.44, 7),
('Diane', 3.51, 7),
('Sharry', 4.23, 7),
('Godzilla', 3.30, 8),
('Darkness', 5.37, 8),
('Punk', 1.36, 9);

insert into collections (name, year_release)
values('best Bob Morley', 2018),
('Ray Charles Collection', 2006),
('The Genius', 2005),
('Music to be murdered be exlusive', 2022),
('The Singles Collection', 2011),
('80x', 1999),
('Electro mix', 2017),
('Best', 2018);

insert into trackscollections (collections_id, tracks_id)
values (1, 1),
(1, 2),
(2, 10),
(2, 11),
(3, 12),
(4, 14),
(4, 13),
(5, 15),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 9),
(8, 8),
(8, 7);