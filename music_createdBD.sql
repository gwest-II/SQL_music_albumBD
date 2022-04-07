CREATE USER Developer WITH PASSWORD 'qwerty123';
CREATE DATABASE Music_album_db WITH OWNER Developer;
CREATE TABLE Styles (
    id serial primary key,
     title varchar(30));

CREATE TABLE Performer (
    id serial primary key,
    name varchar(40)
);

CREATE TABLE Album (
    id serial primary key,
    name varchar(30),
    year_release integer not null
);

CREATE TABLE Tracks (
    id serial primary key,
    name_track varchar(40),
    time_track numeric not null,
    Album_id integer references Album(id)
);

CREATE TABLE Collections (
    id serial primary key,
    name varchar(40),
    year_release integer not null
);

CREATE TABLE TracksCollections (
    Tracks_id integer references Tracks(id),
    Collections_id integer references Collections(id),
    constraint TracksCollectionsPK primary key (Tracks_id, Collections_id)
);

CREATE TABLE if not exists StylesPerformer (
    styles_id integer references Styles(id),
    performer_id integer references Performer(id),
    constraint StylesPerformerPK primary key (styles_id, performer_id)
);
CREATE TABLE if not exists AlbumPerformer (
    album_id integer references Album(id),
    performer_id integer references Performer(id),
    constraint AlbumPerformerPK primary key (album_id, performer_id)
);

