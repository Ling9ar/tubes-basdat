import mysql.connector

# Koneksi ke database movie_db
conn = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="",
    database="film"
)

# Membuat cursor
c = conn.cursor()

# Fungsi ambil data film dengan genre, director, dan aktor (digabungkan)
def view_movies():
    c.execute('''
        SELECT
            m.id_movie,
            m.judul,
            m.rating,
            m.description,
            m.language,
            m.runtime,
            m.votes,
            m.year,
            GROUP_CONCAT(DISTINCT g.nama_genre SEPARATOR ', ') AS genres,
            GROUP_CONCAT(DISTINCT d.nama_director SEPARATOR ', ') AS directors,
            GROUP_CONCAT(DISTINCT a.name_actor SEPARATOR ', ') AS actors
        FROM movie m
        LEFT JOIN Movie_genre mg ON mg.id_movie = m.id_movie
        LEFT JOIN Genre g ON mg.id_genre = g.id_genre
        LEFT JOIN Movie_Director md ON md.id_movie = m.id_movie
        LEFT JOIN Director d ON md.id_director = d.id_director
        LEFT JOIN Movie_actors ma ON ma.id_movie = m.id_movie
        LEFT JOIN Actors a ON ma.id_actor = a.id_actor
        GROUP BY m.id_movie
        ORDER BY m.judul ASC
    ''')
    return c.fetchall()

def view_genres():
    c.execute('SELECT id_genre, nama_genre FROM Genre ORDER BY nama_genre ASC')
    return c.fetchall()

def view_directors():
    c.execute('SELECT id_director, nama_director FROM Director ORDER BY nama_director ASC')
    return c.fetchall()

def view_actors():
    c.execute('SELECT id_actor, name_actor FROM Actors ORDER BY name_actor ASC')
    return c.fetchall()

def view_movie_by_id(movie_id):
    c.execute('''
        SELECT
            m.id_movie,
            m.judul,
            m.rating,
            m.description,
            m.language,
            m.runtime,
            m.votes,
            m.year,
            GROUP_CONCAT(DISTINCT g.nama_genre SEPARATOR ', ') AS genres,
            GROUP_CONCAT(DISTINCT d.nama_director SEPARATOR ', ') AS directors,
            GROUP_CONCAT(DISTINCT a.name_actor SEPARATOR ', ') AS actors
        FROM Movie m
        LEFT JOIN Movie_genre mg ON mg.id_movie = m.id_movie
        LEFT JOIN Genre g ON mg.id_genre = g.id_genre
        LEFT JOIN Movie_Director md ON md.id_movie = m.id_movie
        LEFT JOIN Director d ON md.id_director = d.id_director
        LEFT JOIN Movie_actors ma ON ma.id_movie = m.id_movie
        LEFT JOIN Actors a ON ma.id_actor = a.id_actor
        WHERE m.id_movie = %s
        GROUP BY m.id_movie
    ''', (movie_id,))
    return c.fetchone()