create table if not exists Genre(
	id_genre serial primary key,
	Name VARCHAR(100) not null
);

create table if not exists Artist(
	id_artist serial primary key,
	Name VARCHAR(100) not null
);

 create table if not exists GenreArtist(
 	id_genre INTEGER references Genre(id_genre),
	id_artist INTEGER references Artist(id_artist),
	constraint pk PRIMARY KEY(id_genre, id_artist)
);      

create table if not exists Album(
	id_album serial primary key,
	Name VARCHAR(100) not null,
	Release_year INTEGER not null
);

create table if not exists Track(
	id_track serial primary key,
	Duration NUMERIC(2,2) not null,
	id_album INTEGER not null references Album(id_album)
);

create table if not exists ArtistAlbum(
	id_artist INTEGER references Artist(id_artist),
	id_album INTEGER references Album(id_album),
	constraint rk PRIMARY KEY(id_artist, id_album)
);      

create table if not exists Collection(
	id_collection serial primary key,
	Name VARCHAR(100) not null,
	Release_year INTEGER not null
);

create table if not exists CollectionTrack(
	id_track INTEGER references Track(id_track),
	id_collection INTEGER references Collection(id_collection),
	constraint sk PRIMARY KEY(id_track, id_collection)
);   

	