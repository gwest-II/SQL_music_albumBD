CREATE USER Developer WITH PASSWORD 'qwerty123';
CREATE DATABASE Music_album_db WITH OWNER Developer;
CREATE TABLE Styles (
    id serial primary key,
     title varchar(30));
CREATE TABLE Performer (
    id serial primary key,
    name varchar(40),
    style varchar(30),
    styles_id integer references styles(id)
);
CREATE TABLE Album (
    id serial primary key,
    name varchar(30),
    year_release date not null,
    performer_id integer references Performer(id)

);
CREATE TABLE Tracks (
    id serial primary key,
    name_track varchar(40),
    time_track numeric not null,
    Album_id integer references Album(id)
);
