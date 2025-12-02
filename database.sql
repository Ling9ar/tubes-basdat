-- 1. Create Database
CREATE DATABASE film;
USE film;

-- 2. Table: Movie
CREATE TABLE Movie (
    id_movie INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(255) NOT NULL,
    rating DECIMAL(3,1),
    description TEXT,
    language VARCHAR(50),
    runtime INT,
    votes INT,
    year INT
);

-- 3. Table: Director
CREATE TABLE Director (
    id_director INT AUTO_INCREMENT PRIMARY KEY,
    nama_director VARCHAR(255) NOT NULL
);

-- 4. Table: Movie_Director (Many-to-Many)
CREATE TABLE Movie_Director (
    id_movie INT,
    id_director INT,
    PRIMARY KEY (id_movie, id_director),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_director) REFERENCES Director(id_director)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 5. Table: Actors
CREATE TABLE Actors (
    id_actor INT AUTO_INCREMENT PRIMARY KEY,
    name_actor VARCHAR(255) NOT NULL
);

-- 6. Table: Movie_actors (Many-to-Many)
CREATE TABLE Movie_actors (
    id_movie INT,
    id_actor INT,
    PRIMARY KEY (id_movie, id_actor),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_actor) REFERENCES Actors(id_actor)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 7. Table: Genre
CREATE TABLE Genre (
    id_genre INT AUTO_INCREMENT PRIMARY KEY,
    nama_genre VARCHAR(255) NOT NULL
);

-- 8. Table: Movie_genre (Many-to-Many)
CREATE TABLE Movie_genre (
    id_movie INT,
    id_genre INT,
    PRIMARY KEY (id_movie, id_genre),
    FOREIGN KEY (id_movie) REFERENCES Movie(id_movie)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_genre) REFERENCES Genre(id_genre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- 9. Sample dummy data (10 movies, some genres, directors, actors, and mappings)

-- Insert Genres
INSERT INTO Genre (id_genre, nama_genre) VALUES
(1, 'Science Fiction'),
(2, 'Drama'),
(3, 'Action'),
(4, 'Thriller'),
(5, 'Comedy'),
(6, 'Romance');

-- Insert Directors
INSERT INTO Director (id_director, nama_director) VALUES
(1, 'Christopher Nolan'),
(2, 'Quentin Tarantino'),
(3, 'Steven Spielberg'),
(4, 'Greta Gerwig'),
(5, 'Martin Scorsese');

-- Insert Actors
INSERT INTO Actors (id_actor, name_actor) VALUES
(1, 'Leonardo DiCaprio'),
(2, 'Brad Pitt'),
(3, 'Scarlett Johansson'),
(4, 'Tom Hanks'),
(5, 'Natalie Portman'),
(6, 'Morgan Freeman'),
(7, 'Florence Pugh'),
(8, 'Samuel L. Jackson'),
(9, 'Emma Stone'),
(10, 'Chris Pratt');

-- Insert Movies
INSERT INTO Movie (id_movie, judul, rating, description, language, runtime, votes, year) VALUES
(1, 'Dreamscape', 8.8, 'A skilled thief enters people\'s dreams to steal secrets.', 'English', 148, 200000, 2010),
(2, 'Midnight Run', 7.4, 'An offbeat heist drama with unexpected consequences.', 'English', 115, 45000, 2015),
(3, 'Galaxy Run', 7.9, 'A group of explorers race across the galaxy to save a colony.', 'English', 132, 80000, 2018),
(4, 'Silent Whisper', 6.8, 'A psychological thriller about memory and identity.', 'English', 105, 18000, 2012),
(5, 'Laughing Streets', 7.1, 'A sharp comedy about unlikely friendships in a city.', 'English', 98, 12000, 2020),
(6, 'The Last Signal', 8.2, 'A stranded crew must decode a signal to survive.', 'English', 140, 95000, 2012),
(7, 'Heartstrings', 7.5, 'A touching romance between two musicians finding their voice.', 'English', 110, 23000, 2019),
(8, 'Undercity', 7.0, 'Action-packed story of a courier navigating a cyberpunk metropolis.', 'English', 125, 30000, 2016),
(9, 'Echoes', 6.9, 'A drama about family secrets resurfacing after decades.', 'English', 118, 15000, 2011),
(10, 'Trailblazers', 7.8, 'An inspirational adventure of pioneers exploring unknown lands.', 'English', 135, 67000, 2014);

-- Map Movie to Genres
INSERT INTO Movie_genre (id_movie, id_genre) VALUES
(1, 1),
(1, 4),
(2, 3),
(2, 2),
(3, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(6, 4),
(7, 6),
(8, 3),
(9, 2),
(10, 2);

-- Map Movie to Directors
INSERT INTO Movie_Director (id_movie, id_director) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 4),
(6, 5),
(7, 4),
(8, 2),
(9, 5),
(10, 3);

-- Map Movie to Actors (each movie has 2-3 actors)
INSERT INTO Movie_actors (id_movie, id_actor) VALUES
(1, 1),(1, 3),(1, 6),
(2, 2),(2, 8),
(3, 10),(3, 6),(3, 4),
(4, 5),(4, 1),
(5, 9),(5, 7),
(6, 6),(6, 4),
(7, 9),(7, 5),(7, 7),
(8, 10),(8, 2),
(9, 6),(9, 1),
(10, 4),(10, 3);

INSERT INTO Movie (id_movie, judul, rating, description, language, runtime, votes, year) VALUES
(1, '#FriendButMarried 2', 6.5, 'Ayudia (Mawar De Jongh) is not satisfied enough in enjoying the moment as a wife, but she suddenly becomes pregnant. Her personality changes completely and becomes lazy and super sensitive.', 'Indonesian', 100, 120, 2020),
(2, '4 Mantan', 6.4, 'Sara, Airin, Rachel, and Amara were accidentally brought together after the death of their ex, Alex. All four received a letter saying that there was one killer among them.', 'Indonesian', 80, 8, 2020),
(3, 'Aku Tahu Kapan Kamu Mati', 5.4, 'After apparent death, Siena is able to see signs that people will die. However, her friends did not believe in her abilities. Then, the sign appeared on her and those closest to her.', 'Indonesian', 92, 17, 2020),
(4, 'Anak Garuda', 9.1, 'Good Morning Indonesia, a school for poor orphans, invites seven children to become a team. But, jealousy and envy started because of the hidden love between them. They are sent to Europe without accompany, and the conflicts are exploded.', 'Indonesian', 129, 27, 2020),
(5, 'Dignitate', 7.6, 'Alfi (Al Ghazali) meets Alana (Caitlin Halderman), a new student at school. It turns out that they are in one class and sitting next to each other. Instead of getting along, they often argue because they both are stubborn.', 'Indonesian', 109, 33, 2020),
(6, 'Guru-Guru Gokil', 6.1, 'When staff salaries get stolen at his school, a reluctant new teacher sets out to recoup the money and soon discovers the joys of teaching.', 'Indonesian', 101, 153, 2020),
(7, 'Hunter in the Blue Side of Manchester', 6.2, 'This movie tells the story of Hanif Thamrin (Adipati Dolken) leaving his hometown and trying to pursue his dream to become the only Indonesian at that time who works in the biggest soccer league in the world, English Premier League.', 'English', 90, 21, 2020),
(8, 'Janin', 6.1, 'Randu (Reuben Elishama Hadju) and Dinar (Jill Gladys) are happy because Dinar conceives for the fourth month. However, their happiness slowly disappears when a middle-aged woman, Sukma (...', 'Indonesian', 85, 7, 2020),
(9, 'Mangkujiwo', 5.9, 'A born of Kuntilanak from a Twin Mirror with her misery.', 'Indonesian', 109, 67, 2020),
(10, 'Mariposa', 8.5, 'Iqbal (Angga Yunanda) is like a Mariposa butterfly to Acha (Adhisty Zara). Each time someone approach, he always runs away. Acha is determined to win Iqbal, a man known to be handsome, smart, yet cold.', 'Indonesian', 117, 54, 2020);

TRUNCATE TABLE movie;