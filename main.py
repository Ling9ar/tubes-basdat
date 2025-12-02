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
    "id_movie", "judul", "rating", "description", "language", "runtime", "votes", "year", "genres", "directors", "actors"
])

# Pastikan tipe kolom yang sesuai
if not df_movies.empty:
    df_movies['rating'] = pd.to_numeric(df_movies['rating'], errors='coerce')
    df_movies['year'] = pd.to_numeric(df_movies['year'], errors='coerce').astype('Int64')
    df_movies['runtime'] = pd.to_numeric(df_movies['runtime'], errors='coerce').astype('Int64')


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
    min_year = int(df_movies['year'].min()) if df_movies['year'].notna().any() else 1900
    max_year = int(df_movies['year'].max()) if df_movies['year'].notna().any() else datetime.now().year
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
        df_movies['year'].between(year_range[0], year_range[1]) &
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
        default=["id_movie", "judul", "rating", "year", "runtime", "genres", "directors"]
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
        st.markdown(f"**Tahun:** {movie_row['year'] if pd.notna(movie_row['year']) else '-'}")
        st.markdown(f"**Rating:** {movie_row['rating'] if pd.notna(movie_row['rating']) else '-'}")
        st.markdown(f"**Runtime:** {movie_row['runtime']} menit" if pd.notna(movie_row['runtime']) else "**Runtime:** -")
        st.markdown(f"**Votes:** {movie_row['votes'] if pd.notna(movie_row['votes']) else '-'}")
        st.markdown(f"**Bahasa:** {movie_row['language'] if pd.notna(movie_row['language']) else '-'}")
        st.markdown(f"**Genre(s):** {movie_row['genres'] if pd.notna(movie_row['genres']) else '-'}")
        st.markdown(f"**Director(s):** {movie_row['directors'] if pd.notna(movie_row['directors']) else '-'}")
        st.markdown(f"**Actor(s):** {movie_row['actors'] if pd.notna(movie_row['actors']) else '-'}")
        st.markdown("---")
        st.markdown(f"**Deskripsi:**\n\n{movie_row['description'] if pd.notna(movie_row['description']) else 'Tidak ada deskripsi.'}")


# Sidebar untuk memilih tampilan
st.sidebar.success("Pilih Tabel:")
if st.sidebar.checkbox("Tampilkan Film"):
    tabelMovies_dan_export()