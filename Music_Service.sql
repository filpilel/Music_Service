CREATE TABLE IF NOT EXISTS musical_genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60)
);


CREATE TABLE IF NOT EXISTS list_performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60),
	musical_genre_id INTEGER,
	FOREIGN KEY(Musical_genre_id) REFERENCES musical_genre(id)
);

CREATE TABLE IF NOT EXISTS list_albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	realise DATE,
	performer_id INTEGER,
	FOREIGN KEY (performer_id) REFERENCES list_performers(id)
);

CREATE TABLE IF NOT EXISTS PerformersAlbums (
	performer_id INTEGER REFERENCES list_performers(id),
	album_id INTEGER REFERENCES list_albums(id),
   	CONSTRAINT pa PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS List_tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration TIME,
	album_id INTEGER,
	FOREIGN KEY (album_id) REFERENCES List_albums(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	col_year INTEGER,
	track_id INTEGER,
	FOREIGN KEY (track_id) REFERENCES List_tracks(id)
);






