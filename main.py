import streamlit as st
import pandas as pd
from datetime import datetime

# Import fungsi dari config.py (view_movies, view_genres, ...)
from config import *

# Set konfigurasi halaman dashboard
st.set_page_config("Movie Dashboard", page_icon="", layout="wide")

# Ambil data film
result_movies = view_movies()

# Buat DataFrame film
df_movies = pd.DataFrame(result_movies, columns=[
    "id_film", "judul", "rating", "deskripsi", "user_rating", "durasi_film", "votes", "tahun", "genres", "sutradara", "aktor"
])

# Pastikan tipe kolom yang sesuai
if not df_movies.empty:
    df_movies['rating'] = pd.to_numeric(df_movies['rating'], errors='coerce')
    df_movies['user_rating'] = pd.to_numeric(df_movies['user_rating'], errors='coerce')
    df_movies['tahun'] = pd.to_numeric(df_movies['tahun'], errors='coerce').astype('Int64')
    df_movies['durasi_film'] = pd.to_numeric(df_movies['durasi_film'], errors='coerce').astype('Int64')


def tabelMovies_dan_export():
    if df_movies.empty:
        st.warning("Tidak ada data film untuk ditampilkan.")
        return

    # Hitung jumlah film
    total_movies = df_movies.shape[0]

    # Tampilkan metrik
    col1, col2, col3 = st.columns(3)
    with col1:
        st.metric(label="🎬 Total Film", value=total_movies, delta="Semua Data")

    # Sidebar: Filter Tahun, Rating, dan Genre
    st.sidebar.header("Filter Film")

    # Determine year range and create slider safely (handle min==max)
    min_year = int(df_movies['tahun'].min()) if df_movies['tahun'].notna().any() else 1900
    max_year = int(df_movies['tahun'].max()) if df_movies['tahun'].notna().any() else datetime.now().year
    if min_year >= max_year:
        # Streamlit's slider still errors when min==max in some versions; use a number_input as fallback
        yr = st.sidebar.number_input("Pilih Tahun", min_value=int(min_year), max_value=int(max_year), value=int(min_year), step=1)
        year_range = (int(yr), int(yr))
    else:
        year_range = st.sidebar.slider(
            "Pilih Rentang Tahun",
            min_value=int(min_year),
            max_value=int(max_year),
            value=(int(min_year), int(max_year))
        )

    # Determine rating range and create slider safely (handle min==max)
    min_rating = float(df_movies['rating'].min()) if df_movies['rating'].notna().any() else 0.0
    max_rating = float(df_movies['rating'].max()) if df_movies['rating'].notna().any() else 10.0
    if min_rating >= max_rating:
        # Use number_input for rating when min==max to avoid slider error
        rt = st.sidebar.number_input("Pilih Rating", min_value=float(min_rating), max_value=float(max_rating), value=float(min_rating), step=0.1, format="%.1f")
        rating_range = (float(rt), float(rt))
    else:
        rating_range = st.sidebar.slider(
            "Pilih Rentang Rating",
            min_value=float(min_rating),
            max_value=float(max_rating),
            value=(float(min_rating), float(max_rating))
        )

    # Genre list from DB
    genres_list = [g[1] for g in view_genres()] if callable(view_genres) else []
    selected_genres = st.sidebar.multiselect("Pilih Genre (kosong = semua)", options=genres_list)

    # Terapkan filter
    filtered_df = df_movies[
        df_movies['tahun'].between(year_range[0], year_range[1]) &
        df_movies['rating'].between(rating_range[0], rating_range[1])
    ]

    if selected_genres:
        # cek apakah salah satu genre terpilih ada di kolom genres
        pattern = '|'.join([fr"\b{g}\b" for g in selected_genres])
        filtered_df = filtered_df[filtered_df['genres'].str.contains(pattern, na=False)]

    # Tampilkan tabel film
    st.markdown("### 📋 Tabel Data Film")
    showdata = st.multiselect(
        "Pilih Kolom Film yang Ditampilkan",
        options=filtered_df.columns,
        default=["id_film", "judul", "rating", "tahun", "durasi_film", "genres", "sutradara"]
    )

    st.dataframe(filtered_df[showdata], use_container_width=True)

    # Fungsi helper untuk konversi CSV
    @st.cache_data
    def convert_df_to_csv(_df):
        return _df.to_csv(index=False).encode('utf-8')

    csv = convert_df_to_csv(filtered_df[showdata])
    st.download_button(
        label="⬇️ Download Data Film sebagai CSV",
        data=csv,
        file_name='data_film.csv',
        mime='text/csv'
    )

    # Detail film: pilih film untuk melihat info lengkap
    st.markdown("### 🔎 Detail Film")
    selected_title = st.selectbox("Pilih Film untuk Detail", options=sorted(df_movies['judul'].tolist()))
    if selected_title:
        movie_row = df_movies[df_movies['judul'] == selected_title].iloc[0]
        st.subheader(movie_row['judul'])
        st.markdown(f"**Tahun:** {movie_row['tahun'] if pd.notna(movie_row['tahun']) else '-'}")
        st.markdown(f"**Rating:** {movie_row['rating'] if pd.notna(movie_row['rating']) else '-'}")
        st.markdown(f"**User Rating:** {movie_row['user_rating'] if pd.notna(movie_row['user_rating']) else '-'}")
        st.markdown(f"**Durasi:** {movie_row['durasi_film']} menit" if pd.notna(movie_row['durasi_film']) else "**Durasi:** -")
        st.markdown(f"**Votes:** {movie_row['votes'] if pd.notna(movie_row['votes']) else '-'}")
        st.markdown(f"**Genre(s):** {movie_row['genres'] if pd.notna(movie_row['genres']) else '-'}")
        st.markdown(f"**Sutradara:** {movie_row['sutradara'] if pd.notna(movie_row['sutradara']) else '-'}")
        st.markdown(f"**Aktor:** {movie_row['aktor'] if pd.notna(movie_row['aktor']) else '-'}")
        st.markdown("---")
        st.markdown(f"**Deskripsi:**\n\n{movie_row['deskripsi'] if pd.notna(movie_row['deskripsi']) else 'Tidak ada deskripsi.'}")


def tabelAktor_dan_export():
    result_aktor = view_aktor()
    if not result_aktor:
        st.warning("Tidak ada data aktor untuk ditampilkan.")
        return
    
    df_aktor = pd.DataFrame(result_aktor, columns=["id_aktor", "nama_aktor"])
    
    total_aktor = df_aktor.shape[0]
    
    col1, col2, col3 = st.columns(3)
    with col1:
        st.metric(label="🎭 Total Aktor", value=total_aktor, delta="Semua Data")
    
    st.markdown("### 📋 Tabel Data Aktor")
    showdata = st.multiselect(
        "Pilih Kolom Aktor yang Ditampilkan",
        options=df_aktor.columns,
        default=["id_aktor", "nama_aktor"]
    )
    
    st.dataframe(df_aktor[showdata], use_container_width=True)
    
    @st.cache_data
    def convert_df_to_csv(_df):
        return _df.to_csv(index=False).encode('utf-8')
    
    csv = convert_df_to_csv(df_aktor[showdata])
    st.download_button(
        label="⬇️ Download Data Aktor sebagai CSV",
        data=csv,
        file_name='data_aktor.csv',
        mime='text/csv'
    )


def tabelSutradara_dan_export():
    result_sutradara = view_sutradara()
    if not result_sutradara:
        st.warning("Tidak ada data sutradara untuk ditampilkan.")
        return
    
    df_sutradara = pd.DataFrame(result_sutradara, columns=["id_sutradara", "nama_sutradara"])
    
    total_sutradara = df_sutradara.shape[0]
    
    col1, col2, col3 = st.columns(3)
    with col1:
        st.metric(label="🎬 Total Sutradara", value=total_sutradara, delta="Semua Data")
    
    st.markdown("### 📋 Tabel Data Sutradara")
    showdata = st.multiselect(
        "Pilih Kolom Sutradara yang Ditampilkan",
        options=df_sutradara.columns,
        default=["id_sutradara", "nama_sutradara"]
    )
    
    st.dataframe(df_sutradara[showdata], use_container_width=True)
    
    @st.cache_data
    def convert_df_to_csv(_df):
        return _df.to_csv(index=False).encode('utf-8')
    
    csv = convert_df_to_csv(df_sutradara[showdata])
    st.download_button(
        label="⬇️ Download Data Sutradara sebagai CSV",
        data=csv,
        file_name='data_sutradara.csv',
        mime='text/csv'
    )


def tabelGenre_dan_export():
    result_genre = view_genres()
    if not result_genre:
        st.warning("Tidak ada data genre untuk ditampilkan.")
        return
    
    df_genre = pd.DataFrame(result_genre, columns=["id_genre", "nama_genre"])
    
    total_genre = df_genre.shape[0]
    
    col1, col2, col3 = st.columns(3)
    with col1:
        st.metric(label="🎭 Total Genre", value=total_genre, delta="Semua Data")
    
    st.markdown("### 📋 Tabel Data Genre")
    showdata = st.multiselect(
        "Pilih Kolom Genre yang Ditampilkan",
        options=df_genre.columns,
        default=["id_genre", "nama_genre"]
    )
    
    st.dataframe(df_genre[showdata], use_container_width=True)
    
    @st.cache_data
    def convert_df_to_csv(_df):
        return _df.to_csv(index=False).encode('utf-8')
    
    csv = convert_df_to_csv(df_genre[showdata])
    st.download_button(
        label="⬇️ Download Data Genre sebagai CSV",
        data=csv,
        file_name='data_genre.csv',
        mime='text/csv'
    )


def tabelKarakter_dan_export():
    result_karakter = view_karakter()
    if not result_karakter:
        st.warning("Tidak ada data karakter untuk ditampilkan.")
        return
    
    df_karakter = pd.DataFrame(result_karakter, columns=[
        "id_film", "id_aktor", "nama_karakter", "judul_film", "nama_aktor"
    ])
    
    total_karakter = df_karakter.shape[0]
    
    col1, col2, col3 = st.columns(3)
    with col1:
        st.metric(label="👤 Total Karakter", value=total_karakter, delta="Semua Data")
    
    st.markdown("### 📋 Tabel Data Karakter")
    showdata = st.multiselect(
        "Pilih Kolom Karakter yang Ditampilkan",
        options=df_karakter.columns,
        default=["nama_karakter", "judul_film", "nama_aktor"]
    )
    
    st.dataframe(df_karakter[showdata], use_container_width=True)
    
    @st.cache_data
    def convert_df_to_csv(_df):
        return _df.to_csv(index=False).encode('utf-8')
    
    csv = convert_df_to_csv(df_karakter[showdata])
    st.download_button(
        label="⬇️ Download Data Karakter sebagai CSV",
        data=csv,
        file_name='data_karakter.csv',
        mime='text/csv'
    )


# Sidebar untuk memilih tampilan
st.sidebar.success("Pilih Tabel:")
if st.sidebar.checkbox("Tampilkan Film"):
    tabelMovies_dan_export()
if st.sidebar.checkbox("Tampilkan Aktor"):
    tabelAktor_dan_export()
if st.sidebar.checkbox("Tampilkan Sutradara"):
    tabelSutradara_dan_export()
if st.sidebar.checkbox("Tampilkan Genre"):
    tabelGenre_dan_export()
if st.sidebar.checkbox("Tampilkan Karakter"):
    tabelKarakter_dan_export()