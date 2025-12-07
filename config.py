import mysql.connector

# Koneksi ke database movie_db
conn = mysql.connector.connect(
    host="localhost",
    port="3306",
    user="root",
    password="",
    database="movie_db"
)

# Membuat cursor
c = conn.cursor()

# Fungsi ambil data film dengan genre, sutradara, dan aktor (digabungkan)
def view_movies():
    c.execute('''
        SELECT
            f.id_film,
            f.judul,
            f.rating,
            f.deskripsi,
            f.user_rating,
            f.durasi_film,
            f.votes,
            f.tahun,
            GROUP_CONCAT(DISTINCT g.nama_genre SEPARATOR ', ') AS genres,
            GROUP_CONCAT(DISTINCT s.nama_sutradara SEPARATOR ', ') AS sutradara,
            GROUP_CONCAT(DISTINCT a.nama_aktor SEPARATOR ', ') AS aktor
        FROM Film f
        LEFT JOIN Genre_Film gf ON gf.id_film = f.id_film
        LEFT JOIN Genre g ON gf.id_genre = g.id_genre
        LEFT JOIN Sutradara_Film sf ON sf.id_film = f.id_film
        LEFT JOIN Sutradara s ON sf.id_sutradara = s.id_sutradara
        LEFT JOIN Karakter k ON k.id_film = f.id_film
        LEFT JOIN Aktor a ON k.id_aktor = a.id_aktor
        GROUP BY f.id_film
        ORDER BY f.judul ASC
    ''')
    return c.fetchall()

def view_genres():
    c.execute('SELECT id_genre, nama_genre FROM Genre ORDER BY nama_genre ASC')
    return c.fetchall()

def view_sutradara():
    c.execute('SELECT id_sutradara, nama_sutradara FROM Sutradara ORDER BY nama_sutradara ASC')
    return c.fetchall()

def view_aktor():
    c.execute('SELECT id_aktor, nama_aktor FROM Aktor ORDER BY nama_aktor ASC')
    return c.fetchall()

def view_karakter():
    c.execute('''
        SELECT
            k.id_film,
            k.id_aktor,
            k.nama_kakter,
            f.judul,
            a.nama_aktor
        FROM Karakter k
        LEFT JOIN Film f ON k.id_film = f.id_film
        LEFT JOIN Aktor a ON k.id_aktor = a.id_aktor
        ORDER BY f.judul ASC, a.nama_aktor ASC
    ''')
    return c.fetchall()

def view_film_by_id(film_id):
    c.execute('''
        SELECT
            f.id_film,
            f.judul,
            f.rating,
            f.deskripsi,
            f.user_rating,
            f.durasi_film,
            f.votes,
            f.tahun,
            GROUP_CONCAT(DISTINCT g.nama_genre SEPARATOR ', ') AS genres,
            GROUP_CONCAT(DISTINCT s.nama_sutradara SEPARATOR ', ') AS sutradara,
            GROUP_CONCAT(DISTINCT a.nama_aktor SEPARATOR ', ') AS aktor
        FROM Film f
        LEFT JOIN Genre_Film gf ON gf.id_film = f.id_film
        LEFT JOIN Genre g ON gf.id_genre = g.id_genre
        LEFT JOIN Sutradara_Film sf ON sf.id_film = f.id_film
        LEFT JOIN Sutradara s ON sf.id_sutradara = s.id_sutradara
        LEFT JOIN Karakter k ON k.id_film = f.id_film
        LEFT JOIN Aktor a ON k.id_aktor = a.id_aktor
        WHERE f.id_film = %s
        GROUP BY f.id_film
    ''', (film_id,))
    return c.fetchone()